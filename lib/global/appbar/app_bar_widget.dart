import 'package:flutter/material.dart';

PreferredSizeWidget getAppBarWidget(String title, BuildContext context) {
  return AppBar(
    toolbarHeight: MediaQuery.of(context).size.height * 0.12,
    // flexibleSpace: Image(
    //   image: AssetImage(APP_BAR_BG),
    //   fit: BoxFit.cover,
    // ),
    title: Text(title),
    actions: [
      // title == "ZUL ROUTE"
      //     ? Container()
      //     : IconButton(
      //         icon: SizedBox(height: 24, width: 24, child: Icon(Icons.logout)),
      //         onPressed: () {

      //         })
    ],
  );
}
