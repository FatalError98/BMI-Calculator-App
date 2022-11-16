import 'package:flutter/material.dart';

double screenHeight(double size, BuildContext context) {
  return MediaQuery.of(context).size.height * (size / 100);
}

double screenWidth(double size, BuildContext context) {
  return MediaQuery.of(context).size.width * (size / 100);
}
