import 'package:flutter/material.dart';
import 'package:hemrock/widgets/left_pane_icon_button.dart';

class LeftPaneNavigation extends StatelessWidget {
  const LeftPaneNavigation(
      {super.key,
      required this.extendPane,
      required this.extendPaneFactor,
      required this.leftPaneWidth,
      required this.animationContainerMilliseconds,
      required this.windowHeight});

  final bool extendPane;
  final double extendPaneFactor;
  final double leftPaneWidth;
  final double windowHeight;
  final Duration animationContainerMilliseconds;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: extendPane ? leftPaneWidth * extendPaneFactor : leftPaneWidth,
      height: windowHeight * 0.9,
      duration: animationContainerMilliseconds,
      child: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            LeftPaneIconButton(
              icon: Icons.home,
              titleText: 'Home',
              buttonActive: false,
              extendPane: extendPane,
              delay: animationContainerMilliseconds,
            ),
            // LeftPaneIconButton(
            //   icon: Icons.people,
            //   titleText: 'Employees',
            //   buttonActive: false,
            //   extendPane: extendPane,
            // ),
            // LeftPaneIconButton(
            //   icon: Icons.document_scanner_sharp,
            //   titleText: 'Etc...',
            //   buttonActive: false,
            //   extendPane: extendPane,
            // ),
            // LeftPaneIconButton(
            //   icon: Icons.lock,
            //   titleText: 'Profile',
            //   buttonActive: false,
            //   extendPane: extendPane,
            // ),
          ],
        ),
      ),
    );
  }
}
