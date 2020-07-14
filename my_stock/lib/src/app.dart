import 'package:flutter/material.dart';
import 'package:my_stock/src/pages/home/home_page.dart';
import 'package:my_stock/src/pages/login/login_page.dart';
import 'package:my_stock/src/pages/welcome/welcome_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Stock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
