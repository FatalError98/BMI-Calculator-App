import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:provider/provider.dart';

import '../functions/screen_size.dart';
import '../providers/bmi_provider.dart';
import './card_title.dart';
import '../constant/colors.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bmi = Provider.of<BmiProvider>(context);
    return CardTitle(
      height: screenHeight(23.5, context),
      width: screenWidth(96, context),
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
                  padding: EdgeInsets.only(right: 5),
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
                        size: 20,
                      ),
                      onTap: () => bmi.decWeight()),
                ),
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    width: 60,
                    child: Text(
                      textAlign: TextAlign.center,
                      bmi.weight.toStringAsFixed(1),
                      style: TextStyle(
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
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                    onTap: () => bmi.incWeight(),
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
              value: bmi.weight,
              onChanged: (newValue) => bmi.weightSlider(newValue)),
        ],
      ),
    );
  }
}
