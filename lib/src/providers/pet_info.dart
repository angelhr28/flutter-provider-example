import 'package:flutter/material.dart';

class PetInfo with ChangeNotifier {
  String _name = '';
  String _raza = '';

  String get name => _name;

  String get raza => _raza;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  set raza(String value) {
    _raza = value;
    notifyListeners();
  }
}
