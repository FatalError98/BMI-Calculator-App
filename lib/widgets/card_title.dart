import 'package:flutter/material.dart';

import '../functions/screen_size.dart';

class CardTitle extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final Widget child;
  const CardTitle({
    required this.height,
    required this.width,
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenAwareSize(height, context),
      width: screenAwareSize(width, context),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(screenAwareSize(8.0, context)),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: const Color.fromARGB(160, 0, 0, 0),
                    fontSize: screenAwareSize(16.0, context),
                    fontWeight: FontWeight.w500),
              ),
              const Divider(
                thickness: 0.5,
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
