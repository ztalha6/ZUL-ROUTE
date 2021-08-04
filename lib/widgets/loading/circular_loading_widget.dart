import 'package:flutter/material.dart';

class CircularLoadingWidget extends StatelessWidget {
  final Color color;
  final double size;
  CircularLoadingWidget({this.color = Colors.white, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(color),
      ),
    );
  }
}
