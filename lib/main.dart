import 'package:flutter/material.dart';

import './screens/main_screen.dart';

const appTitle = "Hemrock Security Services";

// Colors
const appPrimaryColor = Color.fromRGBO(31, 28, 78, 1);
const appSecondaryColor = Color.fromRGBO(214, 199, 116, 1);
const appBrightSecondaryColor = Colors.yellowAccent;
const appSecondaryColor2 = Color.fromRGBO(110, 167, 94, 1);
// const appTextColor = Color.fromRGBO(255, 255, 255, 0.85);
const appTextColor = Colors.white;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: appPrimaryColor),
          useMaterial3: true,
        ),
        home: const MainScreen());
  }
}
