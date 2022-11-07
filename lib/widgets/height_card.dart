import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import './card_title.dart';
import '../constant/colors.dart';

class HeightCard extends StatefulWidget {
  HeightCard({
    Key? key,
  }) : super(key: key);

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double currentHeight = 10.0;

  @override
  Widget build(BuildContext context) {
    return CardTitle(
      height: 300,
      width: 150,
      title: 'Height',
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 250,
                  child: SfSlider.vertical(
                    showDividers: true,
                    stepSize: 0.1,
                    showTicks: true,
                    minorTicksPerInterval: 1,
                    min: 10.0,
                    max: 250.0,
                    interval: 40,
                    showLabels: true,
                    value: currentHeight,
                    onChanged: (newValue) {
                      setState(() {
                        currentHeight = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: primaryColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    child: InkWell(
                      child: const Icon(
                        Icons.remove,
                        size: 20,
                      ),
                      onTap: () => setState(
                        () {
                          if (currentHeight > 10) {
                            currentHeight -= 0.1;
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 60,
                      child: Text(
                        textAlign: TextAlign.center,
                        currentHeight.toStringAsFixed(1),
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          width: 1,
                          color: primaryColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    child: InkWell(
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                      onTap: () => setState(
                        () {
                          if (currentHeight < 250) {
                            currentHeight += 0.1;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
