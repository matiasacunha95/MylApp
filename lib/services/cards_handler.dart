import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mylapp/preferences/user_preferences.dart';

class CardsHandler {
  final UserPreferences userPreferences = UserPreferences();
  CollectionReference collections =
      FirebaseFirestore.instance.collection('collections');

  Future addCard(String ref, String edition) {
    return collections.doc(ref + userPreferences.jwt).set({
      'uid': userPreferences.jwt,
      'ref': ref,
      'edition': edition,
      'uidedition': userPreferences.jwt + edition
    });
  }

  Future deleteCard(String ref) {
    return collections.doc(ref + userPreferences.jwt).delete();
  }
}
