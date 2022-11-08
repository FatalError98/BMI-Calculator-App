import 'package:bmi_calculator/models/bmi.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/resultScreen';
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<double>;
    final double height = args[0];
    final double weight = args[1];

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('${height}'),
          Text('${weight}'),
        ],
      ),
    );
  }
}
