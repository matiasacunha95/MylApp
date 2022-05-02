import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mylapp/constants.dart';

class CardsSearchDelegate extends SearchDelegate {
  CardsSearchDelegate({required this.collectionName, required this.title});
  late final String collectionName;
  late final String title;

  @override
  String get searchFieldLabel => 'Buscar carta en $title';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear, color: Theme.of(context).primaryColor),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return GestureDetector(
        child:
            Icon(Icons.arrow_back_ios, color: Theme.of(context).primaryColor),
        onTap: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection(collectionName)
            .where('name', isEqualTo: query)
            //.orderBy('views', descending: true)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (_, int index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          close(context, snapshot.data.docs[index]['name']);
                        },
                        leading: Image(
                            image: NetworkImage(
                                'https://api.myl.cl/static/cards/${snapshot.data.docs[index]['ed_edid']}/${snapshot.data.docs[index]['edid']}.png')),
                        title: Text(
                            snapshot.data.docs[index]['name'].toUpperCase()),
                        subtitle: Text(
                            'Coste: ${snapshot.data.docs[index]['cost']} Daño: ${snapshot.data.docs[index]['damage']}'),
                      ),
                    ));
          } else {
            return Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor)));
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const Center(child: Image(image: NetworkImage(logo)));
    }

    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection(collectionName)
            .where('name', isEqualTo: query)
            //.orderBy('views', descending: true)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (_, int index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          close(context, snapshot.data.docs[index]['name']);
                        },
                        leading: Image(
                            image: NetworkImage(
                                'https://api.myl.cl/static/cards/${snapshot.data.docs[index]['ed_edid']}/${snapshot.data.docs[index]['edid']}.png')),
                        title: Text(
                            snapshot.data.docs[index]['name'].toUpperCase()),
                        subtitle: Text(
                            'Coste: ${snapshot.data.docs[index]['cost']} Daño: ${snapshot.data.docs[index]['damage']}'),
                      ),
                    ));
          } else {
            return Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor)));
          }
        });
  }
}
