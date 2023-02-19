import 'package:flutter/material.dart';
import 'package:calculator/globals.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main.dart';

Widget cus_button(
  String Content,
  double height,
  double width, {
  double? fontsize = 14,
  dynamic? color = Colors.white,
  dynamic bg = theme_bg,
  String? fontFamily,
  double b_radius = 12.0,
}) {
  return TextButton(
    onPressed: null,
    child: SizedBox(
        width: width,
        height: height,
        child: Container(
          child: Center(
            child: Text(
              Content,
              style: TextStyle(
                color: color,
                fontSize: fontsize,
                fontFamily: fontFamily,
              ),
            ),
          ),
        )),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<MaterialColor>(bg),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(b_radius),
          side: BorderSide(color: bg),
        ))),
  );
}

ButtonStyle cus_button_style({
  dynamic bg = theme_bg,
  double b_radius = 12.0,
}) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<MaterialColor>(bg),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(b_radius),
        side: BorderSide(color: bg),
      )));
}

Widget cus_button_sizedBox(
  String Content,
  double height,
  double width, {
  double? fontsize = 14,
  dynamic? color = Colors.white,
  dynamic bg = theme_bg,
  String? fontFamily,
}) {
  return SizedBox(
      width: width,
      height: height,
      child: Container(
        child: Center(
          child: Text(
            Content,
            style: TextStyle(
              color: color,
              fontSize: fontsize,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ));
}

Widget cus_TextField(
  String lable,
  String hint,
  double height,
  double width, {
  double fontsize = 14,
  dynamic color = theme_bg,
  dynamic bg = theme_bg,
  String? fontFamily = theme_font_family,
}) {
  return TextField(
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: bg,
          width: 2,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: bg,
      ),
      hintStyle: TextStyle(color: bg),
      labelText: lable,
      labelStyle: TextStyle(
        color: bg,
      ),
      hintText: hint,
      focusColor: color,
      fillColor: theme_bg,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: bg, width: 2),
      ),
    ),
    style: TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: fontsize,
      letterSpacing: 1.5,
      wordSpacing: 1,
    ),
  );
}

InputDecoration cus_Input_Decuration(
  String lable,
  String hint,
  double height,
  double width, {
  double fontsize = 14,
  dynamic color = theme_bg,
  dynamic bg = theme_bg,
  String? fontFamily = theme_font_family,
}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: bg,
        width: 2,
      ),
    ),
    floatingLabelStyle: TextStyle(
      color: bg,
    ),
    hintStyle: TextStyle(color: bg),
    labelText: lable,
    labelStyle: TextStyle(
      color: bg,
    ),
    hintText: hint,
    focusColor: color,
    fillColor: theme_bg,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: bg, width: 2),
    ),
  );
}

TextStyle cus_Input_Style({
  double fontsize = 14,
  dynamic color = theme_bg,
  dynamic bg = theme_bg,
  String? fontFamily = theme_font_family,
}) {
  return TextStyle(
    color: color,
    fontFamily: fontFamily,
    fontSize: fontsize,
    letterSpacing: 1.5,
    wordSpacing: 1,
  );
}

splash(int Sec) async {
  setPage(0);
  await Future.delayed(Duration(seconds: Sec), () {
  });
}

SpinKitCircle spin({
  double size = 20.0,
  }){
  return SpinKitCircle(
              color: theme_bg,
              size: size,
            );
}