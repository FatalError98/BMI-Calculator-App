import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../functions/screen_size.dart';
import '../providers/bmi_provider.dart';

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
          padding: EdgeInsets.all(screenAwareSize(8.0, context)),
          child: const InputView(),
        ),
      ),
    );
  }
}
