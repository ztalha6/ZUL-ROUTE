import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/screens/opetaror_home/operator_home_viewmodel.dart';

class OperatorHomeView extends StatelessWidget {
  final TextStyle headingStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle subHeadingStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final String title;

  OperatorHomeView({required this.title});
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
    return ViewModelBuilder<OperatorHomeViewModel>.reactive(
      onModelReady: (m) => m.init(),
      viewModelBuilder: () => OperatorHomeViewModel(),
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
                            //model.navigateToAppSettings(context);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Stock Receiving",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            //model.navigateToPrinterSettings(context);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Van Inventory",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            //model.navigateToPrinterSettings(context);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Start Day",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Day Transaction",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Van Information",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Receive Complete",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
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
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Receive Changed",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
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
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  child: Center(child: Text("Send Data")),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(
                                      child: Text(
                                    "Application Settings",
                                    textAlign: TextAlign.center,
                                  )),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            //model.navigateToSignIn(context);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(child: Text("Printer")),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            //model.navigateToSignIn(context);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(child: Text("Initialize")),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _showDialog(context,
                                content:
                                    "Are you sure, you want to remove inventory items?",
                                title: "Attention!",
                                function: () {});
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 10),
                                  child: Center(child: Text("Clear All")),
                                )),
                          ),
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
