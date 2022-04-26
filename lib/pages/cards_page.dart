import 'package:flutter/material.dart';
import 'package:mylapp/bloc/cards_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mylapp/pages/card_detail_page.dart';

class CardsPage extends StatefulWidget {
  final String editionId;
  final String title;
  // ignore: use_key_in_widget_constructors
  const CardsPage({required this.editionId, required this.title});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  ScrollController scrollController = ScrollController();
  CardsListBloc cardsListBloc = CardsListBloc();
  List<QueryDocumentSnapshot> cards = [];

  @override
  void initState() {
    super.initState();
    cardsListBloc.fetchFirstList(widget.editionId);

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
        appBar: AppBar(centerTitle: true, title: Text(widget.title)),
        backgroundColor: Theme.of(context).primaryColor,
        //floatingActionButton: ButtonToTop(scrollController: scrollController),
        body: RefreshIndicator(
          onRefresh: () async {
            cardsListBloc.fetchFirstList(widget.editionId);
          },
          child: StreamBuilder<List<DocumentSnapshot>>(
              stream: cardsListBloc.foodsStream,
              builder: (context, snapshot) {
                final cards = snapshot.data;
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          controller: scrollController,
                          padding: const EdgeInsets.all(5.0),
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          children:
                              cards!.map((card) => _cardImage(card)).toList(),
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
      child: Hero(
        tag: card['id'],
        child: FadeInImage(
          placeholder: const NetworkImage(
              'https://api.myl.cl/static/loading_02_f_opt.gif'),
          image: NetworkImage(
              'https://api.myl.cl/static/cards/${card['ed_edid']}/${card['edid']}.png'),
        ),
      ),
    );
  }
}
