import 'package:flutter/material.dart';
import 'package:flutter_application/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      drawer: MenuDrawer(),
      bottomNavigationBar: menu_bottom(),
      body: Center(child: FlutterLogo()),
    );
  }
}
