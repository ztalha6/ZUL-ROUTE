import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
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

  init() {}
}
