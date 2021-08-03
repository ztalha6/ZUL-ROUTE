import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSettingsViewModel extends ChangeNotifier {
  TextEditingController _dbServerCotroller = TextEditingController();

  bool _isButtonEnabled = false;
  bool get isButtonEnabled => _isButtonEnabled;
  set isButtonEnabled(bool val) {
    _isButtonEnabled = val;
    notifyListeners();
  }

  TextEditingController get dbServerCotroller => _dbServerCotroller;
  set dbServerCotroller(TextEditingController val) {
    _dbServerCotroller = val;
    notifyListeners();
  }

  init() {}
}
