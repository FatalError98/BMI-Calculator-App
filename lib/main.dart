import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/home_screen.dart';
import './screens/profile_screen.dart';
import './screens/settings_screen.dart';
import './constant/colors.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  // ).then(
  //   (_) =>
  runApp(BmiCalculator());
  // );
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
        ),
        fontFamily: 'SF Pro Display',
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
      },
    );
  }
}
