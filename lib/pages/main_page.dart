import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mylapp/pages/cards_page.dart';
import 'package:mylapp/preferences/user_preferences.dart';
import 'package:mylapp/widgets/appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    final UserPreferences preferences = UserPreferences();
    if (preferences.jwt == '') {
      String randomUser = getRandom(64);
      preferences.jwt = randomUser;
    }
    super.initState();
  }

  String getRandom(int length) {
    const characters = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random random = Random.secure();
    return String.fromCharCodes(Iterable.generate(length,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(flexibleSpace: const GlobalAppBar()),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('editions')
                .orderBy('number', descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final editions = snapshot.data!.docs;
                return RefreshIndicator(
                  color: Theme.of(context).primaryColor,
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: GridView.count(
                    crossAxisCount: 2,
                    //controller: scrollController,
                    padding: const EdgeInsets.all(5.0),
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: editions
                        .map((edition) => _editionTile(edition, context))
                        .toList(),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                      child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Theme.of(context).primaryColor))),
                );
              }
            }));
  }

  Widget _editionTile(edition, context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CardsPage(
                    editionId: edition['slug'],
                    title: edition['title'],
                    total: edition['total'])),
          );
        },
        child: Card(
          elevation: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: FadeInImage(
                fit: BoxFit.contain,
                placeholder: const NetworkImage(
                    'https://api.myl.cl/static/loading_02_f_opt.gif'),
                image: NetworkImage(edition['image'])),
          ),
        ),
      ),
    );
  }
}
