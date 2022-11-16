import 'package:flutter/material.dart';

import '../functions/screen_size.dart';
import '../constant/colors.dart';

class GenderPick extends StatelessWidget {
  final String emoji;
  final String title;
  final bool isSelected;
  const GenderPick({
    required this.emoji,
    required this.title,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(screenAwareSize(8.0, context)),
            decoration: BoxDecoration(
              color: isSelected
                  ? primaryColor.withOpacity(0.5)
                  : Colors.transparent,
              shape: BoxShape.circle,
              border: isSelected
                  ? Border.all(width: 1.0, color: primaryColor)
                  : Border.all(width: 1.0, color: Colors.grey),
            ),
            child: Center(
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenAwareSize(10.0, context),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: screenAwareSize(16.0, context),
              color: isSelected ? primaryColor : Colors.grey[800],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        )
      ],
    );
  }
}
