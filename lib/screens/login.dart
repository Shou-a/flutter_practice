import 'package:calculator/Helpers/connector.dart';
import 'package:calculator/globals.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components.dart';
import 'package:calculator/main.dart';

Spiner() {
  Selected_Page = 1;
}

class login extends StatefulWidget {
  // const LoginLayout({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String st_email = "shoua", st_Pass = "abc", email = '', pass = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
      Container(
        height: (display_height / 100) * 13,
        width: 20,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(children: [
          TextField(
            onChanged: (Text) {
              email = Text;
            },
            decoration: cus_Input_Decuration('E-Mail !',
                'Enter valid E-Mail here !', 28, (display_with - 40)),
            style: cus_Input_Style(),
          ),
          Container(
            height: 20,
          ),
          TextField(
            onChanged: (text) {
              pass = text;
            },
            decoration: cus_Input_Decuration('Password !',
                'Enter valid Password here !', 28, (display_with - 40)),
            style: cus_Input_Style(),
          ),
          Container(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              splash(3);
              if (email == st_email && pass == st_Pass) {
                setPage(3);
              } else {
                email = "failed !";
                setState() {
                  email;
                }
              }
            },
            child: cus_button_sizedBox('Login !', 35, (display_with / 3)),
            style: cus_button_style(),
          ),
          Container(
            height: 40,
          ),
          Text(
            email,
            style: TextStyle(
              color: theme_bg,
            ),
          )
        ]),
      ),
    ]));
  }
}
