import 'package:flutter/material.dart';

class CardDetailPage extends StatefulWidget {
  final card;
  CardDetailPage({required this.card});

  @override
  State<CardDetailPage> createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
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
          ),
        ));
  }
}
