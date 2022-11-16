import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/bmi_provider.dart';
import './screens/result_screen.dart';
import './screens/home_screen.dart';
import './constant/colors.dart';

void main() {
  runApp(
    const BmiCalculator(),
  );
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BmiProvider(),
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
          HomeScreen.routeName: (context) => const HomeScreen(),
          ResultScreen.routeName: (context) => const ResultScreen(),
        },
      ),
    );
  }
}
