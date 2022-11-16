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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                GenderCard(),
                AgeCard(),
              ],
            ),
            const HeightCard(),
          ],
        ),
        SizedBox(
          height: screenAwareSize(2, context),
        ),
        const WeightCard(),
        SizedBox(
          height: screenAwareSize(4, context),
        ),
        InkWell(
          onTap: () {
            bmi.calculateBmiKgM();
            Navigator.of(context).pushNamed(ResultScreen.routeName);
          },
          child: Container(
            width: screenAwareSize(320, context),
            padding: const EdgeInsets.symmetric(vertical: 10),
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
        Text(
          'by FatalError98',
          style: TextStyle(
              color: Colors.grey, fontSize: screenAwareSize(13, context)),
        ),
      ],
    );
  }
}
