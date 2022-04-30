import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mylapp/preferences/user_preferences.dart';

class CardDetailPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final card;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CardDetailPage({required this.card});

  @override
  State<CardDetailPage> createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SafeArea(
            child: ListView(
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    )),
                Center(
                  child: Hero(
                    tag: widget.card['id'],
                    child: InteractiveViewer(
                      panEnabled: true,
                      minScale: 1,
                      maxScale: 3,
                      child: FadeInImage(
                        placeholder: const NetworkImage(
                            'https://api.myl.cl/static/loading_02_f_opt.gif'),
                        image: NetworkImage(
                            'https://api.myl.cl/static/cards/${widget.card['ed_edid']}/${widget.card['edid']}.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
