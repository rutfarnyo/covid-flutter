import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_stock/src/pages/login/widget/login_button.dart';

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController _usernameController;
  TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Card(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 22,
              left: 22,
              right: 22,
              bottom: 38,
            ),
            child: Column(
              children: <Widget>[
                _buildUsername(),
                Divider(
                  height: 8,
                  indent: 32,
                  endIndent: 32,
                  color: Colors.black45,
                ),
                buildPassword(),
              ],
            ),
          ),
        ),
        LoginButton(press: submit,),
      ],
    );
  }


  void submit() {
    var username = _usernameController.text;
    var password = _passwordController.text;
    print(username + password);
  }

  TextField buildPassword() => TextField(
        controller: _passwordController,
        maxLines: 1,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "password",
            labelText: "password",
            icon: Icon(FontAwesomeIcons.lock),
            border: InputBorder.none,
            errorText: null),
      );

  TextField _buildUsername() => TextField(
        controller: _usernameController,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "email",
            labelText: "email",
            icon: Icon(FontAwesomeIcons.envelope),
            border: InputBorder.none,
            errorText: null),
      );
}
