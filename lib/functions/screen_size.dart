import 'package:flutter/material.dart';

final double baseHeight = 650.0;
double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.longestSide / baseHeight;
}
