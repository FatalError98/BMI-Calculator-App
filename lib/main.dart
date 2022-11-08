import 'package:bmi_calculator/models/bmi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/result_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Bmi(),
        ),
      ],
      child: MaterialApp(
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
          ResultScreen.routeName: (context) => ResultScreen(),
        },
      ),
    );
  }
}
