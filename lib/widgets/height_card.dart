import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:provider/provider.dart';

import '../functions/screen_size.dart';
import '../providers/bmi_provider.dart';
import './card_title.dart';
import '../constant/colors.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    var bmi = Provider.of<BmiProvider>(context);
    return CardTitle(
      height: screenHeight(47.5, context),
      width: screenWidth(47, context),
      title: 'Height',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: screenHeight(35, context),
                child: SfSlider.vertical(
                  showDividers: true,
                  stepSize: 0.1,
                  showTicks: true,
                  minorTicksPerInterval: 1,
                  min: 10.0,
                  max: 250.0,
                  interval: 40,
                  showLabels: true,
                  value: bmi.height,
                  onChanged: (newValue) {
                    bmi.heightSlider(newValue);
                  },
                ),
              ),
            ],
          ),
          Container(
            height: screenHeight(3.5, context),
            width: screenWidth(40, context),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: primaryColor.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(
                6.0,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: 5.0,
                  ),
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
                      size: 20.0,
                    ),
                    onTap: () => bmi.decHeight(),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Text(
                    textAlign: TextAlign.center,
                    bmi.height.toStringAsFixed(1),
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5.0),
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
                        size: 20.0,
                      ),
                      onTap: () => bmi.incHeight()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
