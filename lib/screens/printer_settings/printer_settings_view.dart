import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/global/drop_down/drop_down_widget.dart';
import 'package:zul_route/global/input/input_widget.dart';
import 'package:zul_route/screens/printer_settings/printer_settings_viewmodel.dart';
import 'package:zul_route/widgets/loading/circular_loading_widget.dart';

class PrinterSettingsView extends StatelessWidget {
  final String title;
  final TextStyle boldStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  PrinterSettingsView({required this.title});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrinterSettingsViewModel>.reactive(
      viewModelBuilder: () => PrinterSettingsViewModel(),
      builder: (context, model, _) => Scaffold(
          appBar: getAppBarWidget("Printer Settings", context),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.all(0),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          PopupMenuButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              8.0))),
                                              child: Container(
                                                child: Icon(Icons.info_outline),
                                              ),
                                              itemBuilder: (context) {
                                                List<PopupMenuItem> _list =
                                                    <PopupMenuItem>[];
                                                _list.add(PopupMenuItem(
                                                  child: Text("Printer Name"),
                                                ));
                                                return _list;
                                              }),
                                          SizedBox(width: 16, height: 50),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              child: Text("Printer Name",
                                                  style: boldStyle)),
                                        ],
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          child: DropDownMenu(
                                            initialValue:
                                                model.printerInitialValue,
                                            containerWidthPerc: 0.35,
                                            onSelected: (val) async {
                                              await model.setPrinterConfig(val);
                                            },
                                            enabled: true,
                                            childrenListFunc: (context) {
                                              List<PopupMenuEntry<Object>>
                                                  _list = [];
                                              _list.add(
                                                PopupMenuItem(
                                                    value: 'Printer 1',
                                                    child: Text(
                                                      // AppLocalizations.of(context).download,
                                                      'Printer 1',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    )),
                                              );
                                              _list.add(PopupMenuItem(
                                                value: 'Printer 2',
                                                child: Text('Printer 2',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    )),
                                              ));
                                              return _list;
                                            },
                                          )),
                                    ],
                                  ),
                                ),
                                Divider(color: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          PopupMenuButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              8.0))),
                                              child: Container(
                                                child: Icon(Icons.info_outline),
                                              ),
                                              itemBuilder: (context) {
                                                List<PopupMenuItem> _list =
                                                    <PopupMenuItem>[];
                                                _list.add(PopupMenuItem(
                                                  child:
                                                      Text("Connection Method"),
                                                ));
                                                return _list;
                                              }),
                                          SizedBox(width: 16, height: 50),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              child: Text("Connection Method",
                                                  style: boldStyle)),
                                        ],
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          child: DropDownMenu(
                                            initialValue:
                                                model.connectionMethod,
                                            containerWidthPerc: 0.35,
                                            onSelected: (val) async {
                                              await model
                                                  .setPrinterConnection(val);
                                            },
                                            enabled: true,
                                            childrenListFunc: (context) {
                                              List<PopupMenuEntry<Object>>
                                                  _list = [];
                                              _list.add(
                                                PopupMenuItem(
                                                    value: 'Bluetooth',
                                                    child: Text(
                                                      // AppLocalizations.of(context).download,
                                                      'Bluetooth',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                    )),
                                              );
                                              _list.add(PopupMenuItem(
                                                value: 'Wi-Fi',
                                                child: Text('Wi-fi',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    )),
                                              ));
                                              return _list;
                                            },
                                          )),
                                    ],
                                  ),
                                ),
                                Divider(color: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          PopupMenuButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              8.0))),
                                              child: Container(
                                                child: Icon(Icons.info_outline),
                                              ),
                                              itemBuilder: (context) {
                                                List<PopupMenuItem> _list =
                                                    <PopupMenuItem>[];
                                                _list.add(PopupMenuItem(
                                                  child: Text("Mac Address"),
                                                ));
                                                return _list;
                                              }),
                                          SizedBox(width: 16, height: 50),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.25,
                                              child: Text("Mac Address",
                                                  style: boldStyle)),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        child: InputWidget(
                                          onDone: () {},
                                          onEditingComplete: () {
                                            FocusScope.of(context).nextFocus();
                                          },
                                          textinputAction: TextInputAction.next,
                                          keyboardType: TextInputType.text,
                                          hintText: "Mac Add.",
                                          controller: model.macController,
                                          errorText: model.macErrorString,
                                          borderColor:
                                              Theme.of(context).primaryColor,
                                          cursorColor: Colors.black,
                                          hintStyle: TextStyle(),
                                          labelText: 'Mac Address',
                                          onChanged: (String) {},
                                          suffixIcon: null,
                                          validator: (String) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(child: Container()),
                                      Expanded(
                                        flex: 1,
                                        child: ElevatedButton(
                                          onPressed: () async {},
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text(
                                              "Check",
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
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
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
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
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
                    )),
                model.isBusy
                    ? Stack(
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: Container(
                              color: Colors.black38,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Center(
                              child: CircularLoadingWidget(
                            color: Theme.of(context).primaryColor,
                            size: null,
                          )),
                        ],
                      )
                    : Container()
              ],
            ),
          )),
    );
  }
}
