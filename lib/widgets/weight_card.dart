import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import './card_title.dart';
import '../constant/colors.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({
    Key? key,
  }) : super(key: key);

  @override
  State<WeightCard> createState() => _WeightCardState();
}

double currentWeight = 10;

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return CardTitle(
      height: 150,
      width: 300,
      title: 'Weight',
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
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
                        if (currentWeight > 10) {
                          currentWeight -= 0.1;
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
                      currentWeight.toStringAsFixed(1),
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
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
                        if (currentWeight < 150) {
                          currentWeight += 0.1;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SfSlider(
            showDividers: true,
            stepSize: 0.1,
            showTicks: true,
            minorTicksPerInterval: 1,
            min: 10.0,
            max: 150.0,
            interval: 20,
            showLabels: true,
            value: currentWeight,
            onChanged: (newValue) {
              setState(() {
                currentWeight = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
