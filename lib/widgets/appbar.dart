import 'package:flutter/material.dart';
import 'package:mylapp/constants.dart';
import 'package:mylapp/pages/information_page.dart';

class GlobalAppBar extends StatefulWidget {
  const GlobalAppBar({Key? key}) : super(key: key);

  @override
  State<GlobalAppBar> createState() => _GlobalAppBarState();
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Hero(tag: 'logo', child: Image(image: NetworkImage(logo))),
        ),
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Image(image: AssetImage('assets/leyends.webp')),
        ),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Information()),
            );
          },
          icon: const Icon(Icons.info_rounded, color: Colors.white),
        ),
      ),
    );
  }
}
