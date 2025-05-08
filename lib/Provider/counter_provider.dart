import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decreament() {
    if (_counter > 0) {
      _counter--;
    }
    notifyListeners();
  }
}
