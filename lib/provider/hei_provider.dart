import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heightProvider with ChangeNotifier {
  double _height = 40;

  double get height => _height;

  set height(double newValue) {
    _height = newValue;
    notifyListeners();
  }
}
