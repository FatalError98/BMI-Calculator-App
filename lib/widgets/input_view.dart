import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bmi_provider.dart';
import '../screens/result_screen.dart';
import '../constant/colors.dart';
import '../functions/screen_size.dart';
import './gender_card.dart';
import './age_card.dart';
import './height_card.dart';
import './weight_card.dart';

class InputView extends StatelessWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BmiProvider>(context);
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                GenderCard(),
                SizedBox(
                  height: screenWidth(1, context),
                ),
                AgeCard(),
              ],
            ),
            SizedBox(
              width: screenWidth(1, context),
            ),
            const HeightCard(),
          ],
        ),
        SizedBox(
          height: screenWidth(2, context),
        ),
        const WeightCard(),
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () {
            bmi.calculateBmiKgM();
            Navigator.of(context).pushNamed(ResultScreen.routeName);
          },
          child: Container(
            width: screenWidth(95, context),
            padding: EdgeInsets.symmetric(vertical: screenWidth(2.5, context)),
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        const Text('by FatalError98',
            style: TextStyle(color: Colors.grey, fontSize: 13)),
      ],
    );
  }
}
