import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/screens/admin_home/admin_home_viewmodel.dart';

class AdminHomeView extends StatelessWidget {
  final TextStyle headingStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle subHeadingStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final String title;

  AdminHomeView({required this.title});
  Future<void> _showDialog(BuildContext context,
      {required String content,
      required String title,
      required Function function}) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (bCtx) {
          return AlertDialog(
            title: Text("$title"),
            content: Text("$content"),
            actions: [
              TextButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.pop(bCtx);
                },
              ),
              TextButton(
                child: Text("Yes"),
                onPressed: () {
                  function();
                  Navigator.pop(bCtx);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdminHomeViewModel>.reactive(
      onModelReady: (m) => m.init(),
      viewModelBuilder: () => AdminHomeViewModel(),
      builder: (context, model, _) => Scaffold(
        appBar: getAppBarWidget(title, context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            model.navigateToAppSettings(context);
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child:
                                    Center(child: Text("Application Settings")),
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            model.navigateToPrinterSettings(context);
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Printer Settings")),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content:
                                    "Are you sure to Initialize device, all data will be removed.",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Initialize Device")),
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content:
                                    "Are you sure to Recieve data from Server? all data will be replaced.",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Receive Complete")),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content:
                                    "Are you sure to Recieve data from Server? all data will be replaced.",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Receive Changed")),
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content: "Are you sure to send data to Server?",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Send Data")),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content:
                                    "Are you sure, you want to remove inventory items?",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Clear All Trans")),
                              )),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            model.navigateToSignIn(context);
                          },
                          child: Card(
                              elevation: 10,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 60),
                                child: Center(child: Text("Sign out")),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
