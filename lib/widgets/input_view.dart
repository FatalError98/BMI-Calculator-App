import 'package:flutter/material.dart';

import './gender_card.dart';
import './age_card.dart';
import './height_card.dart';
import './weight_card.dart';

class InputView extends StatelessWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const WeightCard(),
      ],
    );
  }
}
