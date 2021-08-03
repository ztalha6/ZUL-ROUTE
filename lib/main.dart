import 'package:flutter/material.dart';
import 'package:zul_route/screens/home_page/home_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VerifyOtpView(title: 'ZUL ROUTE'),
    );
  }
}
