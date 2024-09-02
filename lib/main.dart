import 'package:flutter/material.dart';

import './home_page.dart';

const appTitle = "Hemrock Security Services";

// Colors
const appPrimaryColor = Color.fromRGBO(31, 28, 78, 1);
const appSecondaryColor = Color.fromRGBO(214, 199, 116, 1);
const appInversePrimaryColor = Colors.yellowAccent;
const appSecondaryColor2 = Color.fromRGBO(110, 167, 94, 1);
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
          appBarTheme: const AppBarTheme(
            toolbarHeight: 75.0,
            backgroundColor: appPrimaryColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 22.0,
              color: appInversePrimaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 7.0,
            ),
          ),
        ),
        home: const HomePage());
  }
}
