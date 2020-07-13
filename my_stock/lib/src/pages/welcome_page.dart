import 'package:flutter/material.dart';
import 'package:my_stock/src/common/constants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        Constants.IMAGE_TEN_YEAR,
        height: 150,
        width: 150,
      ),
    );
  }
}
