import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void restart() {
    _counter = 0;
    notifyListeners();
  }

  void multi2() {
    _counter *= 2;
    notifyListeners();
  }

  void multi3() {
    _counter *= 3;
    notifyListeners();
  }

  void multi5() {
    _counter *= 5;
    notifyListeners();
  }
}
