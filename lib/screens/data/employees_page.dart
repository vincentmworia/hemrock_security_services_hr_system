import 'package:flutter/material.dart';

import '../../main.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0)),
        child: LayoutBuilder(builder: (context, cons) {
          final width = cons.maxWidth;
          final height = cons.maxHeight;
          return Column(
            children: <Widget>[
              Container(
                height: height * 0.2,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                ),
              )
            ],
          );
        }));
  }
}
