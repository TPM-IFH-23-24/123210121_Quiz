import 'package:flutter/material.dart';
import 'package:timothearuth_quiz/Home.dart';
import 'package:timothearuth_quiz/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login()
    );
  }
}

