import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bmi_provider.dart';
import './result_screen.dart';
import '../constant/colors.dart';
import '../widgets/input_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BmiProvider>(context);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const InputView(),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(ResultScreen.routeName, arguments: [
                bmi.height,
                bmi.weight,
              ]),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
