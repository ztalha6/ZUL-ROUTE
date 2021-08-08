import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AppSettingsViewModel extends BaseViewModel {
  TextEditingController _dbServerController = TextEditingController();
  TextEditingController _databaseController = TextEditingController();
  TextEditingController get dbServerController => _dbServerController;
  bool? _check = false;
  bool? get check => _check;
  set check(bool? val) {
    _check = val;
    notifyListeners();
  }

  set dbServerController(TextEditingController val) {
    _dbServerController = val;
    notifyListeners();
  }

  TextEditingController get databaseController => _databaseController;
  set databaseController(TextEditingController val) {
    _databaseController = val;
    notifyListeners();
  }

  TextEditingController _loginIdController = TextEditingController();
  TextEditingController get loginIdController => _loginIdController;
  set loginIdController(TextEditingController val) {
    _loginIdController = val;
    notifyListeners();
  }

  TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;
  set passwordController(TextEditingController val) {
    _passwordController = val;
    notifyListeners();
  }

  TextEditingController _empCodeController = TextEditingController();
  TextEditingController get empCodeController => _empCodeController;
  set empCodeController(TextEditingController val) {
    _empCodeController = val;
    notifyListeners();
  }

  TextEditingController _localDBController = TextEditingController();
  TextEditingController get localDBController => _localDBController;
  set localDBController(TextEditingController val) {
    _localDBController = val;
    notifyListeners();
  }

  String _dbServerError = "";
  String get dbServerError => _dbServerError;
  set dbServerError(String val) {
    _dbServerError = val;
    notifyListeners();
  }

  String _localDBError = "";
  String get localDBError => _localDBError;
  set localDBError(String val) {
    _localDBError = val;
    notifyListeners();
  }

  String _passwordError = "";
  String get passwordError => _passwordError;
  set passwordError(String val) {
    _passwordError = val;
    notifyListeners();
  }

  String _empCodeError = "";
  String get empCodeError => _empCodeError;
  set empCodeError(String val) {
    _empCodeError = val;
    notifyListeners();
  }

  String _loginIDError = "";
  String get loginIDError => _loginIDError;
  set loginIDError(String val) {
    _loginIDError = val;
    notifyListeners();
  }

  String _databaseError = "";
  String get databaseError => _databaseError;
  set databaseError(String val) {
    _databaseError = val;
    notifyListeners();
  }

  bool _isButtonEnabled = false;
  bool get isButtonEnabled => _isButtonEnabled;
  set isButtonEnabled(bool val) {
    _isButtonEnabled = val;
    notifyListeners();
  }

  init() {}
}
