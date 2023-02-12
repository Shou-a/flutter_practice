import 'package:flutter/material.dart';
import 'screens/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DisplayHandler(),
    );
  }
}


class DisplayHandler extends StatefulWidget {
  @override
  _DisplayHandlerState createState() => _DisplayHandlerState();
}

class _DisplayHandlerState extends State<DisplayHandler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Titel Here"),
        ),
        body: Calculator(),
    );
  }
}