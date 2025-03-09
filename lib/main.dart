import 'package:flutter/material.dart';
import 'splash_screen.dart';  
import 'landing_page.dart';

void main() {
  runApp(SproutlyApp());
}

class SproutlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sproutly',
      home: SplashScreen(), // Start with Splash Screen
    );
  }
}
