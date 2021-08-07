import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/global/input/input_widget.dart';
import 'package:zul_route/screens/application_settings/app_settings_viewmodel.dart';

class AppSettingsView extends StatelessWidget {
  final String title;
  final TextStyle boldStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  final TextStyle labelStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w800);
  AppSettingsView({required this.title});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppSettingsViewModel>.reactive(
      onModelReady: (m) => m.init(),
      viewModelBuilder: () => AppSettingsViewModel(),
      builder: (context, model, _) => Scaffold(
        appBar: getAppBarWidget(title, context),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            PopupMenuButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                child: Container(
                                  child: Icon(Icons.info_outline),
                                ),
                                itemBuilder: (context) {
                                  List<PopupMenuItem> _list = <PopupMenuItem>[];
                                  _list.add(PopupMenuItem(
                                    child: Text("DB Server"),
                                  ));
                                  return _list;
                                }),
                            SizedBox(width: 16, height: 50),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text("DB Server", style: boldStyle)),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: InputWidget(
                            onDone: () {},
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                            textinputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            hintText: "DB Server",
                            controller: model.dbServerController,
                            errorText: model.dbServerError,
                            borderColor: Theme.of(context).primaryColor,
                            cursorColor: Colors.black,
                            hintStyle: TextStyle(),
                            labelText: 'DB Server',
                            onChanged: (String) {},
                            suffixIcon: null,
                            validator: (String) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            PopupMenuButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                child: Container(
                                  child: Icon(Icons.info_outline),
                                ),
                                itemBuilder: (context) {
                                  List<PopupMenuItem> _list = <PopupMenuItem>[];
                                  _list.add(PopupMenuItem(
                                    child: Text("Database"),
                                  ));
                                  return _list;
                                }),
                            SizedBox(width: 16, height: 50),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text("Database", style: boldStyle)),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: InputWidget(
                            onDone: () {},
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                            textinputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            hintText: "Database",
                            controller: model.databaseController,
                            errorText: model.databaseError,
                            borderColor: Theme.of(context).primaryColor,
                            cursorColor: Colors.black,
                            hintStyle: TextStyle(),
                            labelText: 'Database',
                            onChanged: (String) {},
                            suffixIcon: null,
                            validator: (String) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            PopupMenuButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                child: Container(
                                  child: Icon(Icons.info_outline),
                                ),
                                itemBuilder: (context) {
                                  List<PopupMenuItem> _list = <PopupMenuItem>[];
                                  _list.add(PopupMenuItem(
                                    child: Text("Login ID"),
                                  ));
                                  return _list;
                                }),
                            SizedBox(width: 16, height: 50),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text("Login ID", style: boldStyle)),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: InputWidget(
                            onDone: () {},
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                            textinputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: "Login ID",
                            controller: model.loginIdController,
                            errorText: model.loginIDError,
                            borderColor: Theme.of(context).primaryColor,
                            cursorColor: Colors.black,
                            hintStyle: TextStyle(),
                            labelText: 'Login Id',
                            onChanged: (String) {},
                            suffixIcon: null,
                            validator: (String) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            PopupMenuButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                child: Container(
                                  child: Icon(Icons.info_outline),
                                ),
                                itemBuilder: (context) {
                                  List<PopupMenuItem> _list = <PopupMenuItem>[];
                                  _list.add(PopupMenuItem(
                                    child: Text("Password"),
                                  ));
                                  return _list;
                                }),
                            SizedBox(width: 16, height: 50),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text("Password", style: boldStyle)),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: InputWidget(
                            obscureText: true,
                            onDone: () {},
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                            textinputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            hintText: "Password",
                            controller: model.passwordController,
                            errorText: model.passwordError,
                            borderColor: Theme.of(context).primaryColor,
                            cursorColor: Colors.black,
                            hintStyle: TextStyle(),
                            labelText: 'Password',
                            onChanged: (String) {},
                            suffixIcon: Icon(Icons.visibility_off),
                            validator: (String) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () async {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Test Connection",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                PopupMenuButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0))),
                                    child: Container(
                                      child: Icon(Icons.info_outline),
                                    ),
                                    itemBuilder: (context) {
                                      List<PopupMenuItem> _list =
                                          <PopupMenuItem>[];
                                      _list.add(PopupMenuItem(
                                        child: Text("Employee Code"),
                                      ));
                                      return _list;
                                    }),
                                SizedBox(width: 16, height: 50),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Text("Employee Code",
                                        style: boldStyle)),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: InputWidget(
                                onDone: () {},
                                onEditingComplete: () {
                                  FocusScope.of(context).nextFocus();
                                },
                                textinputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                hintText: "Emp Code",
                                controller: model.empCodeController,
                                errorText: model.empCodeError,
                                borderColor: Theme.of(context).primaryColor,
                                cursorColor: Colors.black,
                                hintStyle: TextStyle(),
                                labelText: 'Employee Code',
                                onChanged: (String) {},
                                suffixIcon: null,
                                validator: (String) {},
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(children: [
                            Flexible(
                              child: CheckboxListTile(
                                title: Text("Advance Text Process",
                                    style: boldStyle),
                                value: model.check,
                                onChanged: (newValue) {
                                  model.check = newValue;
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey),
                  Row(
                    children: [
                      PopupMenuButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Container(
                            child: Icon(Icons.info_outline),
                          ),
                          itemBuilder: (context) {
                            List<PopupMenuItem> _list = <PopupMenuItem>[];
                            _list.add(PopupMenuItem(
                              child: Text("Local Database"),
                            ));
                            return _list;
                          }),
                      SizedBox(width: 16, height: 50),
                      Text("Local Database", style: boldStyle),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: InputWidget(
                            onDone: () {},
                            onEditingComplete: () {
                              FocusScope.of(context).nextFocus();
                            },
                            textinputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (val) {},
                            controller: model.localDBController,
                            errorText: model.localDBError,
                            hintText: "Local DB",
                            borderColor: Theme.of(context).primaryColor,
                            cursorColor: Colors.black,
                            hintStyle: TextStyle(),
                            labelText: 'Local DB',
                            suffixIcon: null,
                            validator: (String) {},
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.file_upload_rounded))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Close",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Save",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //floatingActionButton:
      ),
    );
  }
}
