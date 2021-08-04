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
      home: VerifyOtpView(title: 'ZUL ROUTE'),
      theme: ThemeData(
        dividerColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF2E6DF7),
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        // primarySwatch: Colors.blue,∏
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(46, 109, 247, 1),
        fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(46, 109, 247, 1),
        )),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          primary: Color.fromRGBO(46, 109, 247, 1),
          side: BorderSide(
            width: 1.0,
            color: Color.fromRGBO(46, 109, 247, 1),
          ),
        )),
        buttonTheme: ButtonThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            height: 60,
            minWidth: double.infinity,
            textTheme: ButtonTextTheme.primary,
            buttonColor: Theme.of(context).primaryColor),
        textTheme: TextTheme(
            headline6:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            headline5:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            caption: TextStyle(
              fontSize: 16,
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
