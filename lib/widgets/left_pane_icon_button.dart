import 'package:flutter/material.dart';

import '../main.dart';

class LeftPaneIconButton extends StatefulWidget {
  const LeftPaneIconButton(
      {super.key,
      required this.icon,
      required this.buttonActive,
      required this.titleText,
      required this.extendPane,
      required this.delay});

  final IconData icon;
  final bool buttonActive;
  final String titleText;
  final bool extendPane;
  final Duration delay;

  @override
  State<LeftPaneIconButton> createState() => _LeftPaneIconButtonState();
}

class _LeftPaneIconButtonState extends State<LeftPaneIconButton> {
  static var _visibleWidgets = true;
  static var _lockTransition = false;
  static final _inactiveBnColor = appSecondaryColor.withOpacity(0.3);
  static const _activeBnColor = appSecondaryColor;

  void _pTrigLogic() {
    if ((_visibleWidgets) && (widget.extendPane) && (!_lockTransition)) {
      setState(() {
        _visibleWidgets = false;
      });

      Future.delayed(const Duration(milliseconds: 300)).then((value) {
        setState(() {
          _visibleWidgets = true;
        });
      });
      _lockTransition = true;
    }
    if (_lockTransition && !widget.extendPane) {
      _lockTransition = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    _pTrigLogic();
    return Visibility(
      visible: _visibleWidgets,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30.0),
        focusColor: Colors.red.withOpacity(0.2),
        highlightColor: appSecondaryColor2.withOpacity(0.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Icon(widget.icon,
                  size: 40,
                  color:
                      !widget.buttonActive ? _inactiveBnColor : _activeBnColor),
            ),
            if (widget.extendPane)
              Text(
                widget.titleText,
                style: TextStyle(
                    color: !widget.buttonActive
                        ? _inactiveBnColor
                        : _activeBnColor,
                    fontSize: 25.0),
              ),
            const Center(),
          ],
        ),
      ),
    );
  }
}
