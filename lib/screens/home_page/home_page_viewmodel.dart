import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zul_route/screens/admin_home/admin_home_view.dart';

class HomeViewModel extends ChangeNotifier {
  String driverName = 'Saud Muhammad [Vehicle # 1002]';
  String ip = '10.0.1.1';
  int counter = 0;
  TextEditingController _otpController = TextEditingController();

  bool _isButtonEnabled = false;
  bool get isButtonEnabled => _isButtonEnabled;
  set isButtonEnabled(bool val) {
    _isButtonEnabled = val;
    notifyListeners();
  }

  TextEditingController get otpController => _otpController;
  set otpController(TextEditingController val) {
    _otpController = val;
    notifyListeners();
  }

  get scrollController => null;

  void validateOtp(String value) {
    if (value.length == 4) {
      isButtonEnabled = true;
    } else {
      isButtonEnabled = false;
    }
  }

  init() {}

  void navigateToAdminHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => AdminHomeView(title: "Admin Home")),
    );
  }
}
