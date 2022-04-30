import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonToTop extends StatefulWidget {
  ScrollController scrollController;
  ButtonToTop({Key? key, required this.scrollController}) : super(key: key);

  @override
  _ButtonToTopState createState() => _ButtonToTopState();
}

class _ButtonToTopState extends State<ButtonToTop> {
  bool isOnTop = true;

  @override
  // ignore: must_call_super
  void initState() {
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset <= 0) {
        setState(() => isOnTop = true);
      } else {
        setState(() => isOnTop = false);
      }
    });
  }

  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: isOnTop ? 0 : 0.8,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_drop_up, color: Colors.white),
              elevation: 0,
            ),
          ),
        ));
  }

  _scrollToTop() {
    widget.scrollController.animateTo(
        widget.scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.decelerate);
    setState(() {
      isOnTop = true;
    });
  }
}
