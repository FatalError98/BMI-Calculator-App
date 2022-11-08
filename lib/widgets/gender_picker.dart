import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(8),
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
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: isSelected ? primaryColor : Colors.grey[800],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        )
      ],
    );
  }
}
