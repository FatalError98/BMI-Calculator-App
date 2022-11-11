import 'dart:math';
import 'package:flutter/material.dart';

import '../models/bmi.dart';

class BmiProvider with ChangeNotifier, Bmi {
  String icon = '';
  String category = '';
  double bmi = 0.0;
  double healthyWeightMax = 0.0;
  double healthyWeightMin = 0.0;

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

  void calculateBmiKgM() {
    bmi = (weight / pow(height, 2)) * 10000;
    healthyWeightMax = 25 * pow(height, 2) / 10000;
    healthyWeightMin = 18.5 * pow(height, 2) / 10000;
    if (bmi < 16) {
      category = 'Severe Thinness';
      icon = '😵';
    } else if (bmi >= 16 && bmi <= 17) {
      category = 'Moderate Thinness';
      icon = '😱';
    } else if (bmi >= 17 && bmi <= 18.5) {
      category = 'Mild Thinness	';
      icon = '😧';
    } else if (bmi >= 18.5 && bmi <= 25) {
      category = 'Normal';
      icon = '🔥';
    } else if (bmi >= 25 && bmi <= 30) {
      category = 'Overweight';
      icon = '😧';
    } else if (bmi >= 30 && bmi <= 35) {
      category = 'Obese Class I';
      icon = '😨';
    } else if (bmi >= 35 && bmi <= 40) {
      category = 'Obese Class II';
      icon = '😱';
    } else if (bmi > 40) {
      category = 'Obese Class III';
      icon = '😵';
    }
    notifyListeners();
  }
}
