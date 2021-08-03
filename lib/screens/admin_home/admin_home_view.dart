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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
                          onTap: () {},
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
