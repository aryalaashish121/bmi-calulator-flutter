import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> BmiCalculator(),
        'result':(context)=>ResultPage()
      },
      theme: ThemeData.dark(),
    );
  }
}


