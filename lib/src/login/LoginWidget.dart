import 'package:flutter/material.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginPageWidget.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginSignUpPageWidget.dart';
import 'package:leitura_mockup_app/src/login/pages/LoginSigninPageWidget.dart';
import 'package:leitura_mockup_app/src/login/provider/ProviderPageController.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                LoginSignUpPageWidget(),
                LoginSigninPageWidget(),
                LoginPageWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
