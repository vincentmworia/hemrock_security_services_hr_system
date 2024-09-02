import 'package:flutter/material.dart';

import '../main.dart';

class MainScreenTitle extends StatelessWidget {
  const MainScreenTitle({
    super.key,
    required this.leftPaneWidth,
    required this.windowWidth,
    required this.windowHeight,
    required this.animationContainerDuration,
    required this.extendPane,
    required this.windowIconPressed,
    required this.extendPaneFactor,
  });

  final double leftPaneWidth;
  final double windowWidth;
  final double windowHeight;
  final Duration animationContainerDuration;
  final void Function() windowIconPressed;
  final bool extendPane;
  final double extendPaneFactor;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          AnimatedContainer(
            width:
                extendPane ? leftPaneWidth * extendPaneFactor : leftPaneWidth,
            duration: animationContainerDuration,
            child: IconButton(
              icon: Icon(
                extendPane ? Icons.arrow_back : Icons.menu,
                size: 30,
                color: extendPane ? appBrightSecondaryColor : appSecondaryColor,
              ),
              onPressed: windowIconPressed,
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
              // right: 5.0,
              // left: leftPaneWidth,
            ),
            child: Row(
              mainAxisAlignment: windowWidth > 800
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (windowWidth > 800)
                  const Text(
                    // 'Home Page?',
                    'Hemrock Security Services',
                    style: TextStyle(
                      fontSize: 25.0,
                      // color: appInversePrimaryColor,
                      // color: appTextColor,
                      color: appSecondaryColor,
                      // color: appSecondaryColor2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 7.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                Image.asset(
                  'assets/images/logo_2.png',
                  width: windowWidth * 0.1,
                  height: windowHeight * 0.1,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          )),
        ],
      );
}
