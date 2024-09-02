import 'package:flutter/material.dart';

import '../widgets/left_pane_navigation.dart';
import '../widgets/main_screen_title.dart';

import '../main.dart';
import 'data/employees_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const animationContainerMilliseconds = Duration(milliseconds: 300);
  static const extendPaneFactor = 2.5;

  var extendPane = false;

  void windowIconPressed() {
    setState(() {
      extendPane = !extendPane;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final windowWidth = mediaQuery.size.width;
    final windowHeight = (mediaQuery.size.height - mediaQuery.padding.top);

    final leftPaneWidth = (windowWidth < 1500 ? 1500 : windowWidth) * 0.05;

    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SizedBox(
        width: windowWidth,
        height: windowHeight,
        child: Column(
          children: [
            // Left Navigation Pane
            MainScreenTitle(
              leftPaneWidth: leftPaneWidth,
              windowHeight: windowHeight,
              animationContainerDuration: animationContainerMilliseconds,
              extendPane: extendPane,
              windowIconPressed: windowIconPressed,
              windowWidth: windowWidth,
              extendPaneFactor: extendPaneFactor,
            ),
            Expanded(
              child: Row(
                children: [
                  //Left Pane Options
                  LeftPaneNavigation(
                      extendPane: extendPane,
                      extendPaneFactor: extendPaneFactor,
                      leftPaneWidth: leftPaneWidth,
                      animationContainerMilliseconds:
                          animationContainerMilliseconds),

                  // Switch between different screens
                  const Expanded(
                    child: EmployeesScreen(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
