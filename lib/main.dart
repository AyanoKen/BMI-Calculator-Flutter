import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

final ThemeData theme = ThemeData.dark();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme.copyWith(
          appBarTheme: theme.appBarTheme.copyWith(
            backgroundColor: Color(0xFF0E1020),
          ),
          scaffoldBackgroundColor: Color(0xFF0E1020),
        ),
        home: MainPage());
  }
}
