import 'package:flutter/material.dart';

class TipTimeProvider with ChangeNotifier {
  int? _selectedRadio;
  int? get selectedRadio => _selectedRadio;
  bool selected = false;
  var price = TextEditingController();
  double tip_amount = 0.0;

  void tipCalculation(int dato) {
    double percentage = 0.0;
    switch (_selectedRadio) {
      case 0:
        percentage = 0.2;
        break;
      case 1:
        percentage = 0.18;
        break;
      case 2:
        percentage = 0.15;
        break;
      default:
        percentage = 0.0;
    }
    tip_amount = dato * percentage;
    if (selected) {
      tip_amount = tip_amount.ceil().toDouble();
    }
    print(tip_amount);
    notifyListeners();
  }

  void setSelected(value) {
    selected = value;
    notifyListeners();
  }

  void setSelectedRadio(newValue) {
    _selectedRadio = newValue;
    notifyListeners();
  }
}
