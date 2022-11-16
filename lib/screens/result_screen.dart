import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../functions/screen_size.dart';
import '../providers/bmi_provider.dart';
import '../constant/colors.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/resultScreen';
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BmiProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(24, context),
                    vertical: screenWidth(8, context)),
                child: Column(
                  children: [
                    Text(
                      'Your BMI is',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      bmi.bmi.toStringAsFixed(1),
                      style: TextStyle(
                          fontSize: 56,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'kg/m2',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      bmi.icon,
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 48,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Your Weight is: ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          TextSpan(
                              text: bmi.category,
                              style: const TextStyle(
                                  color: secondaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Healthy BMI range: 18.5 kg/m2 - 25 kg/m2',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Healthy weight for the height: ${bmi.healthyWeightMin.toStringAsFixed(1)} Kg - ${bmi.healthyWeightMax.toStringAsFixed(1)} Kg',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
