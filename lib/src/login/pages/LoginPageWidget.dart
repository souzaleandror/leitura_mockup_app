import 'package:flutter/material.dart';
import 'package:leitura_mockup_app/src/login/widgets/CircleButton.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 40,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Awesome",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text("App",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20))
            ],
          ),
          RichText(
              text:
                  TextSpan(style: TextStyle(fontSize: 20), children: <TextSpan>[
            TextSpan(text: "Awesome"),
            TextSpan(
                text: "App", style: TextStyle(fontWeight: FontWeight.bold)),
          ])),
          Container(height: 40),
          CircleButton(
            texto: "Sign Up",
            backgroundColor: Colors.transparent,
            textColor: Colors.white,
            borderColor: Colors.white,
          ),
          Container(height: 40),
          CircleButton(
            texto: "Login",
            backgroundColor: Colors.white,
            textColor: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
