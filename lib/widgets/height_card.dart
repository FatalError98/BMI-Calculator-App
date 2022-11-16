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
      height: screenAwareSize(310, context),
      width: screenAwareSize(155, context),
      title: 'Height',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: screenAwareSize(230, context),
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
            height: screenAwareSize(25.0, context),
            width: screenAwareSize(150, context),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: primaryColor.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(
                screenAwareSize(6.0, context),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    right: screenAwareSize(5.0, context),
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
                      child: Icon(
                        Icons.remove,
                        size: screenAwareSize(20.0, context),
                      ),
                      onTap: () => bmi.decHeight()),
                ),
                Container(
                  color: Colors.white,
                  child: Text(
                    textAlign: TextAlign.center,
                    bmi.height.toStringAsFixed(1),
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: screenAwareSize(20.0, context),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: screenAwareSize(5.0, context)),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        width: 1,
                        color: primaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                  child: InkWell(
                      child: Icon(
                        Icons.add,
                        size: screenAwareSize(20.0, context),
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
