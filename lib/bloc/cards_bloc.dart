import 'dart:io';
import 'package:rxdart/subjects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CardsListBloc {
  late List<DocumentSnapshot> documentList;
  late BehaviorSubject<List<DocumentSnapshot>> cardsController;

  CardsListBloc() {
    cardsController = BehaviorSubject<List<DocumentSnapshot>>();
  }

  Stream<List<DocumentSnapshot>> get foodsStream => cardsController.stream;

/*This method will automatically fetch first 10 elements from the document list */
  Future fetchFirstList(edition) async {
    try {
      documentList = (await FirebaseFirestore.instance
              .collection(edition)
              .orderBy('edid')
              .limit(18)
              .get())
          .docs;
      cardsController.sink.add(documentList);
    } on SocketException {
      cardsController.sink
          .addError(const SocketException("No Internet Connection"));
    } catch (e) {
      cardsController.sink.addError(e);
    }
  }

  fetchNextCards(edition) async {
    try {
      List<DocumentSnapshot> newDocumentList = (await FirebaseFirestore.instance
              .collection(edition)
              .orderBy('edid')
              .startAfterDocument(documentList[documentList.length - 1])
              .limit(18)
              .get())
          .docs;
      documentList.addAll(newDocumentList);
      cardsController.sink.add(documentList);
    } on SocketException {
      cardsController.sink
          .addError(const SocketException("No Internet Connection"));
    } catch (e) {
      cardsController.sink.addError(e);
    }
  }

  void dispose() {
    cardsController.close();
  }
}
