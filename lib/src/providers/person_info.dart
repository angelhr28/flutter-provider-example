import 'package:flutter/material.dart';

class PersonInfo with ChangeNotifier {
  String _name = '';
  String _surname = '';

  String get name => _name;

  String get surname => _surname;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  set surname(String value) {
    _surname = value;
    notifyListeners();
  }
}
