import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  Color color;
  double size;

  LoadingWidget({this.color = Colors.black45, this.size = 15});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SpinKitCircle(
      color: Colors.black45,
      size: 15,
    ));
  }
}
