import 'package:flutter/material.dart';

import '../functions/screen_size.dart';
import './card_title.dart';
import './gender_picker.dart';

enum Gender {
  male,
  female,
}

class GenderCard extends StatefulWidget {
  const GenderCard({super.key});

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  bool _isMale = true;
  bool _isFemale = false;

  void selectGender(var gender) {
    setState(() {
      if (gender == Gender.male) {
        _isMale = true;
        _isFemale = false;
      } else {
        _isMale = false;
        _isFemale = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CardTitle(
      height: screenAwareSize(155, context),
      width: screenAwareSize(155, context),
      title: 'Gender',
      child: Container(
        margin: EdgeInsets.only(top: screenAwareSize(15.0, context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                selectGender(Gender.male);
              },
              child: GenderPick(
                emoji: '👨🏻',
                title: 'Male',
                isSelected: _isMale,
              ),
            ),
            GestureDetector(
              onTap: () {
                selectGender(Gender.female);
              },
              child: GenderPick(
                emoji: '👩🏻',
                title: 'Female',
                isSelected: _isFemale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
