import 'package:flutter/material.dart';

class Bmi with ChangeNotifier {
  double height = 10.0;
  double weight = 10.0;

  void decWeight() {
    if (weight > 10) {
      weight -= 0.1;
    }
    notifyListeners();
  }

  void incWeight() {
    if (weight < 250) {
      weight += 0.1;
    }
    notifyListeners();
  }

  void decHeight() {
    if (height > 10) {
      height -= 0.1;
    }
    notifyListeners();
  }

  void incHeight() {
    if (height < 250) {
      height += 0.1;
    }
    notifyListeners();
  }

  double heightSlider(double value) {
    notifyListeners();
    return height = value;
  }

  double weightSlider(double value) {
    notifyListeners();
    return weight = value;
  }
}
