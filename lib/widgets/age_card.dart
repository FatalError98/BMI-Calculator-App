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
      height: screenAwareSize(155, context),
      width: screenAwareSize(155, context),
      title: 'Age',
      child: Column(
        children: [
          NumberPicker(
            selectedTextStyle: TextStyle(
                color: primaryColor, fontSize: screenAwareSize(24.0, context)),
            axis: Axis.horizontal,
            itemCount: 3,
            itemWidth: screenAwareSize(40.0, context),
            minValue: 1,
            maxValue: 130,
            value: age,
            onChanged: (val) => setState(() {
              age = val;
            }),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenAwareSize(35, context),
                height: screenAwareSize(35, context),
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  splashColor: primaryColor.withOpacity(0.5),
                  splashRadius: 20,
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: screenAwareSize(16.0, context),
                  ),
                  onPressed: () => setState(() {
                    if (age > 1) {
                      age--;
                    }
                  }),
                ),
              ),
              Container(
                width: screenAwareSize(35, context),
                height: screenAwareSize(35, context),
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  splashColor: primaryColor.withOpacity(0.5),
                  splashRadius: 20,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: screenAwareSize(16.0, context),
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
