import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zul_route/screens/application_settings/app_settings_view.dart';
import 'package:zul_route/screens/home_page/home_page_view.dart';
import 'package:zul_route/screens/printer_settings/printer_settings_view.dart';

class AdminHomeViewModel extends ChangeNotifier {
  String driverName = 'Saud Muhammad [Vehicle # 1002]';
  String ip = '10.0.1.1';
  int counter = 0;
  TextEditingController _otpController = TextEditingController();

  TextEditingController get otpController => _otpController;
  set otpController(TextEditingController val) {
    _otpController = val;
    notifyListeners();
  }

  get scrollController => null;
  void incrementcounter() {
    counter++;
    notifyListeners();
  }

  void navigateToAppSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              AppSettingsView(title: "Appplication Settings")),
    );
  }

  init() {}

  void navigateToSignIn(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => VerifyOtpView(title: "ZUL ROUTE")),
    );
  }

  void navigateToPrinterSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PrinterSettingsView(title: "Printer Settings")),
    );
  }
}
