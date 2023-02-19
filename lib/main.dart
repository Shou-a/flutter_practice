import 'package:calculator/components.dart';
import 'package:calculator/screens/home.dart';
import 'package:calculator/screens/splash.dart';
import 'package:flutter/material.dart';
import 'screens/calculator.dart';
import 'screens/login.dart';
import 'package:calculator/globals.dart';

int Selected_Page = 1;

void main() {
  setPage(0);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment !',
      theme: ThemeData(
        primarySwatch: theme_bg,
      ),
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
        title: Text("Smart Panel"),
        //centerTitle: true,
        titleSpacing: -8,
        backgroundColor: Colors.red,
        elevation: 8,
        titleTextStyle: TextStyle(
            color: theme_text_color,
            fontFamily: 'forte',
            letterSpacing: 1.5,
            wordSpacing: 1,
            fontSize: 22.0),
        leading: Container(
          child: Padding(
            padding: EdgeInsets.all(9.0),
            child: Image.asset("assets/images/d_logo.png"),
          ),
          height: 200,
          width: 450,
        ),
      ),
      body: pages[Selected_Page],
    );
  }
}
setPage(int page_index){
  setState(){
    Selected_Page = page_index;
  }
}


List<Widget> pages = [
  Splash(),
  login(),
  Calculator(),
  Home(),
];
