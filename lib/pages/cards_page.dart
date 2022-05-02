// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mylapp/bloc/cards_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mylapp/pages/card_detail_page.dart';
import 'package:mylapp/preferences/user_preferences.dart';
import 'package:mylapp/search/search_delegate.dart';
import 'package:mylapp/services/cards_handler.dart';
import 'package:mylapp/widgets/scroll_to_top.dart';

class CardsPage extends StatefulWidget {
  final String editionId;
  final String title;
  final int total;
  const CardsPage(
      {required this.editionId, required this.title, required this.total});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  ScrollController scrollController = ScrollController();
  CardsListBloc cardsListBloc = CardsListBloc();
  List<QueryDocumentSnapshot> cards = [];
  final UserPreferences userPreferences = UserPreferences();
  late String titleSearch;

  @override
  void initState() {
    super.initState();
    cardsListBloc.fetchFirstList(widget.editionId, '');

    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      cardsListBloc.fetchNextCards(widget.editionId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Center(
                        child: Text('Información',
                            style: TextStyle(
                                color: Color.fromRGBO(106, 137, 118, 1)))),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.bookmark_add_outlined),
                          title: Text('Para agregar la carta a tu colección'),
                        ),
                        ListTile(
                          leading: Icon(Icons.remove_red_eye),
                          title: Text('Para ver la carta en detalle'),
                        ),
                        ListTile(
                          leading: Icon(Icons.bookmark_added),
                          title: Text('Para quitar la carta de tu colección'),
                        )
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text(
                          'OK',
                          style: TextStyle(
                              color: Color.fromRGBO(106, 137, 118, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                icon: const Icon(Icons.info_rounded, color: Colors.white),
              ),
              IconButton(
                onPressed: () async {
                  var newTitle = await showSearch(
                      context: context,
                      delegate: CardsSearchDelegate(
                          collectionName: widget.editionId,
                          title: widget.title));
                  if (newTitle != '') {
                    cardsListBloc.fetchFirstList(widget.editionId, newTitle);
                  }
                },
                icon: const Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
            title: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('collections')
                    .where('uidedition',
                        isEqualTo: userPreferences.jwt + widget.title)
                    .snapshots(),
                builder: (context, snapshot) {
                  return Text(
                      '${widget.title} (${snapshot.data?.docs.length}/${widget.total})');
                })),
        backgroundColor: Theme.of(context).primaryColor,
        floatingActionButton: ButtonToTop(scrollController: scrollController),
        body: RefreshIndicator(
          onRefresh: () async {
            cardsListBloc.fetchFirstList(widget.editionId, '');
          },
          child: StreamBuilder<List<DocumentSnapshot>>(
              stream: cardsListBloc.foodsStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          controller: scrollController,
                          padding: const EdgeInsets.all(5.0),
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: snapshot.data!
                              .map((card) => _cardImage(card))
                              .toList(),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).primaryColor)));
                }
              }),
        ));
  }

  Widget _cardImage(card) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardDetailPage(
                card: card,
              ),
            ));
      },
      child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('collections')
              .where('uid', isEqualTo: userPreferences.jwt)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var thisCollection =
                  snapshot.data!.docs.where((s) => s['ref'] == card['id']);
              return _imageCardAndIcons(thisCollection, card);
            } else {
              return _imageCardAndIcons([], card);
            }
          }),
    );
  }

  Widget _imageCardAndIcons(thisCollection, card) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.16,
          child: Center(
            child: Hero(
              tag: card['id'],
              child: Opacity(
                opacity: thisCollection.isNotEmpty ? 1 : 0.5,
                child: FadeInImage(
                  placeholder: const NetworkImage(
                      'https://api.myl.cl/static/loading_02_f_opt.gif'),
                  image: NetworkImage(
                      'https://api.myl.cl/static/cards/${card['ed_edid']}/${card['edid']}.png'),
                ),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  CardsHandler cardsHandler = CardsHandler();
                  thisCollection.isNotEmpty
                      ? cardsHandler.deleteCard(card['id'])
                      : cardsHandler.addCard(card['id'], widget.title);
                },
                icon: thisCollection.isNotEmpty
                    ? const Icon(Icons.bookmark_added,
                        color: Colors.green, size: 30)
                    : const Icon(
                        Icons.bookmark_add_outlined,
                        color: Colors.grey,
                        size: 30,
                      )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardDetailPage(
                          card: card,
                        ),
                      ));
                },
                icon: const Icon(Icons.remove_red_eye,
                    color: Colors.grey, size: 30))
          ],
        ),
      ],
    );
  }
}
