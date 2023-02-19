import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:calculator/globals.dart';
import 'package:calculator/components.dart';

class Calculator extends StatefulWidget {
  // const LoginLayout({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Container(
          width: 20,
          height: 20,
          //child: Image.network('https://i.pcmag.com/imagery/reviews/03aizylUVApdyLAIku1AvRV-39.fit_scale.size_760x427.v1605559903.png'),
          // color: Colors.black12,
        ),
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Container(
            height: 100,
            width: (display_with - 40),
            color: Colors.greenAccent,
            child: TextField(
              onSubmitted: (String email) {
                setState(() {
                  name = email;
                });
              },
              decoration: InputDecoration(
                labelText: 'Calculate Here !',
                border: OutlineInputBorder(),
                hintText: 'Enter valid Syntex here !',
              ),
            ),
          )),
      Center(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: <Widget>[
                  cus_button('+', 35, (display_with / 4)),
                  cus_button('-', 35, (display_with / 4)),
                  cus_button('x', 35, (display_with / 4)),
                  cus_button('/', 35, (display_with / 4)),
                ],
              ))),
    ]);
  }
}
