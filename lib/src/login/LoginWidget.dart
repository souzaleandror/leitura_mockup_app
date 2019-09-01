import 'package:flutter/material.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginPageWidget.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginSignUpPageWidget.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginSigninPageWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //image
          Image.asset(
            "assets/imgs/montain.jpeg",
            fit: BoxFit.cover,
          ),
          //pageview
          PageView(
            children: <Widget>[
              LoginSignUpPageWidget(),
              LoginSigninPageWidget(),
              LoginPageWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
