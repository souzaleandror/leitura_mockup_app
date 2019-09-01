import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leitura_mockup_app/src/login/widgets/CircleButton.dart';
import 'package:leitura_mockup_app/src/login/widgets/CustomTextField.dart';

class LoginSigninPageWidget extends StatefulWidget {
  @override
  _LoginSigninPageWidgetState createState() => _LoginSigninPageWidgetState();
}

class _LoginSigninPageWidgetState extends State<LoginSigninPageWidget> {
  Widget _textForgot() {
    return Container(
      width: double.infinity,
      child: Text(
        "Forgotten Password ?",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
      ),
    );
  }

  Widget _lineTextLine() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.black,
            height: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("Or Connect With"),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            height: 15,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 80,
          ),
          Icon(Icons.headset_mic,
              size: 50, color: Theme.of(context).accentColor),
          Spacer(),
          CustomTextField(
            label: "Email",
            hint: "exemplo@gmail.com",
          ),
          Container(
            height: 25,
          ),
          CustomTextField(
            label: "Password",
            hint: "********",
          ),
          Container(
            height: 30,
          ),
          _textForgot(),
          Container(
            height: 30,
          ),
          CircleButton(texto: "Login"),
          Container(
            height: 30,
          ),
          _lineTextLine(),
          Container(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: CircleButton(
                  texto: "Facebook",
                  icon: Icon(FontAwesomeIcons.facebookF,
                      size: 14, color: Colors.white),
                  backgroundColor: Colors.blue[900],
                ),
              ),
              Container(
                width: 30,
              ),
              Expanded(
                child: CircleButton(
                  backgroundColor: Colors.red[800],
                  texto: "Google",
                  icon: Icon(FontAwesomeIcons.google,
                      size: 14, color: Colors.white),
                ),
              ),
            ],
          ),
          Container(
            height: 80,
          ),
        ],
      ),
    );
  }
}
