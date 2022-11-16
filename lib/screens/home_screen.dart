import 'package:flutter/material.dart';

import '../functions/screen_size.dart';
import '../constant/colors.dart';
import '../widgets/input_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI Calculator'),
        ),
        body: Padding(
          padding: EdgeInsets.all(
            screenWidth(2, context),
          ),
          child: InputView(),
        ),
      ),
    );
  }
}
