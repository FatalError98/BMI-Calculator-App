import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../widgets/input_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: InputView()),
          ],
        ),
      ),
    );
  }
}
