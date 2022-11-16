import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../functions/screen_size.dart';
import '../constant/colors.dart';
import '../widgets/card_title.dart';

class AgeCard extends StatefulWidget {
  const AgeCard({
    Key? key,
  }) : super(key: key);

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return CardTitle(
      height: screenHeight(23.5, context),
      width: screenWidth(47, context),
      title: 'Age',
      child: Column(
        children: [
          SizedBox(
            height: screenHeight(1.5, context),
          ),
          NumberPicker(
            selectedTextStyle:
                const TextStyle(color: primaryColor, fontSize: 24),
            axis: Axis.horizontal,
            itemCount: 3,
            itemWidth: screenWidth(9, context),
            minValue: 1,
            maxValue: 130,
            value: age,
            onChanged: (val) => setState(() {
              age = val;
            }),
          ),
          SizedBox(
            height: screenHeight(1, context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenWidth(9, context),
                height: screenWidth(9, context),
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  splashColor: primaryColor.withOpacity(0.5),
                  splashRadius: screenWidth(5, context),
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 16,
                  ),
                  onPressed: () => setState(() {
                    if (age > 1) {
                      age--;
                    }
                  }),
                ),
              ),
              Container(
                width: screenWidth(9, context),
                height: screenWidth(9, context),
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  splashColor: primaryColor.withOpacity(0.5),
                  splashRadius: screenWidth(5, context),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  onPressed: () => setState(() {
                    if (age < 130) {
                      age++;
                    }
                  }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
