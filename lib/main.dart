import 'package:flutter/material.dart';
import 'package:flutter_application/screens/bmi_screen.dart';
import 'package:flutter_application/screens/intro_screen.dart';
import 'package:flutter_driver/driver_extension.dart';
void main() {
  enableFlutterDriverExtension();
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen()
      },
      initialRoute: '/',
      // home: IntroScreen()
    );
  }
}
