import 'package:calculator/components.dart';
import 'package:calculator/globals.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
            height: 70,
            child: spin(size: 70.0))      
    );
  }
}
