import 'package:flutter/material.dart';
import 'package:my_stock/src/pages/welcome/widget/body.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body(size: size),
    );
  }
}