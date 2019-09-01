import 'package:flutter/material.dart';
import 'package:leitura_mockup_app/src/login/widgets/CircleButton.dart';
import 'package:leitura_mockup_app/src/login/widgets/CustomTextField.dart';

class LoginSignUpPageWidget extends StatefulWidget {
  @override
  _LoginSignUpPageWidgetState createState() => _LoginSignUpPageWidgetState();
}

class _LoginSignUpPageWidgetState extends State<LoginSignUpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic,
              size: 50, color: Theme.of(context).accentColor),
          Container(
            height: 50,
          ),
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
            height: 25,
          ),
          CustomTextField(
            label: "Confirm Password",
            hint: "*********",
          ),
          Container(
            height: 50,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Already have an account ?",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            ),
          ),
          Container(
            height: 30,
          ),
          CircleButton(texto: "Sign Up"),
        ],
      ),
    );
  }
}
