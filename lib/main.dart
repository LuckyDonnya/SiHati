import 'package:flutter/material.dart';
// import 'package:sihati/menu.dart';
import 'package:sihati/pages/OnboardingScreen.dart';
// import 'package:sihati/pages/permohonanAL.dart';

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
      title: "sihati",
      home: OnboardingScreen(),
    );
  }
}
