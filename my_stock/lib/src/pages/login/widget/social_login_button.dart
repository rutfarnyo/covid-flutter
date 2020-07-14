import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPress;

  const SocialLoginButton({
    Key key,
    @required this.icon,
    this.color = Colors.black,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      child: Icon(
        icon,
        color: color,
      ),
      onPressed: onPress,
    );
  }
}
