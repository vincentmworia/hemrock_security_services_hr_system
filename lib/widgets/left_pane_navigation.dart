import 'package:flutter/material.dart';

import '../main.dart';

class LeftPaneNavigation extends StatelessWidget {
  const LeftPaneNavigation(
      {super.key,
      required this.extendPane,
      required this.extendPaneFactor,
      required this.leftPaneWidth,
      required this.animationContainerMilliseconds});

  final bool extendPane;
  final double extendPaneFactor;
  final double leftPaneWidth;
  final Duration animationContainerMilliseconds;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: extendPane ? leftPaneWidth * extendPaneFactor : leftPaneWidth,
      duration: animationContainerMilliseconds,
      child: Column(
        children: extendPane
            ? []
            : <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.home,
                      size: 40,
                      color: appSecondaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.people,
                      size: 40,
                      color: appBrightSecondaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.lock,
                      size: 40,
                      color: appSecondaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
      ),
    );
  }
}
