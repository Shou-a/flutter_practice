import 'package:calculator/components.dart';
import 'package:calculator/globals.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const LoginLayout({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox( 
        height: 150,
        child: Image.asset("assets/images/d_logo.png")),
    );
  }
}
