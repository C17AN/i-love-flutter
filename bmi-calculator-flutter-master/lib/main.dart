import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme 설정!
      // theme: ThemeData.dark(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffbddbff),
        ),
        scaffoldBackgroundColor: Color(0xfffafcfc),
      ),
      home: SafeArea(
        child: InputPage(),
      ),
    );
  }
}
