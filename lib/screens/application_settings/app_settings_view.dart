import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zul_route/global/appbar/app_bar_widget.dart';
import 'package:zul_route/global/input/input_widget.dart';
import 'package:zul_route/screens/application_settings/app_settings_viewmodel.dart';

class AppSettingsView extends StatelessWidget {
  final TextStyle headingStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle subHeadingStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final String title;

  AppSettingsView({required this.title});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppSettingsViewModel>.reactive(
      onModelReady: (m) => m.init(),
      viewModelBuilder: () => AppSettingsViewModel(),
      builder: (context, model, _) => Scaffold(
        appBar: getAppBarWidget(title, context),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                InputWidget(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.black,
                    validator: (s) {},
                    controller: model.dbServerCotroller,
                    borderColor: Colors.blue,
                    labelText: 'DB Server',
                    hintText: 'DB Server',
                    hintStyle: TextStyle(color: Colors.black),
                    onChanged: (s) {},
                    suffixIcon: Icon(Icons.select_all),
                    onDone: () {},
                    onEditingComplete: () {},
                    textinputAction: TextInputAction.next)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
