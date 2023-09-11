// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golden_house_flutter_multi_pages/screens/homeScreen.dart';
import 'package:golden_house_flutter_multi_pages/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login(),
    );
  }
}
