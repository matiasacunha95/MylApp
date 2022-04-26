import 'package:flutter/material.dart';
import 'package:mylapp/constants.dart';

class GlobalAppBar extends StatefulWidget {
  const GlobalAppBar({Key? key}) : super(key: key);

  @override
  State<GlobalAppBar> createState() => _GlobalAppBarState();
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ListTile(
        leading: CircleAvatar(
            child: Image(image: NetworkImage(logo)),
            backgroundColor: Color.fromRGBO(41, 60, 67, 1)),
        title: Image(image: NetworkImage(leyends)),
      ),
    );
  }
}
