import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

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
      height: 150,
      width: 150,
      title: 'Age',
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            NumberPicker(
              selectedTextStyle:
                  const TextStyle(color: primaryColor, fontSize: 24.0),
              axis: Axis.horizontal,
              itemCount: 3,
              itemWidth: 50,
              minValue: 1,
              maxValue: 130,
              value: age,
              onChanged: (val) => setState(() {
                age = val;
              }),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    splashColor: primaryColor.withOpacity(0.5),
                    splashRadius: 20,
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
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    splashColor: primaryColor.withOpacity(0.5),
                    splashRadius: 20,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
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
      ),
    );
  }
}
