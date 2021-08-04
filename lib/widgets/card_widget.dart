import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  CardWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: (BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0)))),
          margin: EdgeInsets.all(0),
          elevation: 3,
          child: child),
    );
  }
}
