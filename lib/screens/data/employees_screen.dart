import 'package:flutter/material.dart';

import '../../main.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: const Center(
        child: Text(
          'Employees View',
          style: TextStyle(
            color: appSecondaryColor,
            fontSize: 30.0,
            letterSpacing: 18.0,
          ),
        ),
      ),
      // width: windowWidth * 0.1,
    );
  }
}
