import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  final Color colorText;

  const RoundedButton({
    Key key,
    this.title = "LOGIN",
    this.color = Colors.orange,
    this.onPress,
    this.colorText = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width * 0.8,
      margin: EdgeInsets.only(bottom: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: color,
          onPressed: onPress,
          child: Text(title, style: TextStyle(color: colorText),),
        ),
      ),
    );
  }
}
