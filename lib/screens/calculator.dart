import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  // const LoginLayout({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

Column flatButton(String Content){
  return Column(children: [
                TextButton(
                    onPressed: null,
                    child: Center(
                        child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.greenAccent,
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          Content,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ))),
              ]);
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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        child: TextField(
          onSubmitted: (String email) {
            setState(() {
              name = email;
            });
          },
          enabled: false,
          decoration: InputDecoration(
            labelText: 'Calculate Here !',
            border: OutlineInputBorder(),
            hintText: 'Enter valid Syntex here !',
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: <Column>[
              flatButton('+'),
              flatButton('-'),
              flatButton('X'),
              flatButton('/'),
            ],
          )),
    ]);
  }
}
