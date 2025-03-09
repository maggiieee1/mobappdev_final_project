import 'package:flutter/material.dart';
import 'landing_page.dart';

void main() {
  runApp(SproutlyApp());
}

class SproutlyApp extends StatelessWidget {
  const SproutlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sproutly',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: LandingPage(),
    );
  }
}
