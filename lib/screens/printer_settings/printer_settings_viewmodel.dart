import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class PrinterSettingsViewModel extends BaseViewModel {
  String _printerinitialValue = 'Printer Name';
  String get printerInitialValue => _printerinitialValue;
  set printerInitialValue(String val) {
    _printerinitialValue = val;
    notifyListeners();
  }

  TextEditingController _macController = TextEditingController();
  TextEditingController get macController => _macController;
  set macController(TextEditingController val) {
    _macController = val;
    notifyListeners();
  }

  String _macErrorString = '';
  String get macErrorString => _macErrorString;
  set macErrorString(String val) {
    _macErrorString = val;
    notifyListeners();
  }

  String _connectionMethod = "Connection Method";
  String get connectionMethod => _connectionMethod;
  set connectionMethod(String val) {
    _connectionMethod = val;
    notifyListeners();
  }

  Future<void> setPrinterConfig(val) async {
    printerInitialValue = val;
  }

  Future<void> setPrinterConnection(val) async {
    connectionMethod = val;
  }
}
