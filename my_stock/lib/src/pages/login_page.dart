import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_stock/src/pages/form_login.dart';
import 'package:my_stock/src/pages/social_login_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildBackground(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 60),
                Image.asset(
                  "assets/images/header_1.png",
                  width: 320,
                ),
                SizedBox(height: 12),
                FormLogin(),
                SizedBox(height: 22),
                _buildForgotPassword(),
                SizedBox(height: 22),
                ..._buildOptionalLogin(context),
                SizedBox(height: 32),
                _buildSignUp(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildBackground() => Container(
        decoration: BoxDecoration(
          gradient: BackgroundTheme.gradient,
        ),
      );


  FlatButton _buildForgotPassword() => FlatButton(
        textColor: Colors.white,
        onPressed: () {
          //todo
        },
        child: Text(
          "Forgot password ?",
        ),
      );

  List _buildOptionalLogin(BuildContext context) => [
        _buildOrDivider(),
        SizedBox(height: 22),
        _buildSocialLogin(context),
      ];

  _buildSignUp() => FlatButton(
        textColor: Colors.white,
        onPressed: () {
          //todo
        },
        child: Text(
          "Don't have an account ?",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      );

  _buildOrDivider() {
    final colors = [Colors.white12, Colors.white];
    Container gradient({isStart = true}) => Container(
          width: 100,
          height: 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isStart ? colors : colors.reversed.toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0, 1],
            ),
          ),
        );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        gradient(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "or",
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
        gradient(isStart: false),
      ],
    );
  }

  _buildSocialLogin(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SocialLoginButton(
              onPress: () {},
              icon: FontAwesomeIcons.facebookF,
              color: Color(0xFF4063ae),
            ),
            SocialLoginButton(
              onPress: () {},
              icon: FontAwesomeIcons.google,
              color: Color(0xFFd7483b),
            ),
            SocialLoginButton(
              onPress: () {},
              icon: FontAwesomeIcons.apple,
              color: Color(0xFF323232),
            ),
            SocialLoginButton(
              onPress: () {},
              icon: FontAwesomeIcons.line,
              color: Color(0xFF21b54d),
            ),
            SocialLoginButton(
              onPress: () {},
              icon: FontAwesomeIcons.twitter,
              color: Color(0xFF3fa7dc),
            ),
          ],
        ),
      );
}

class BackgroundTheme {
  static const startColor = Color(0xFF36D1DC);
  static const endColor = Color(0xFF5B86E5);

  const BackgroundTheme();

  static const gradient = const LinearGradient(
      colors: const [startColor, endColor],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0, 1]);
}
