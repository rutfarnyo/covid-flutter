import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              //todo
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              //todo
            },
            icon: Icon(Icons.filter_list),
          ),
        ],
        title: Text("Stock workshop"),
      ),
      bottomNavigationBar: Text("Tanarkorn"),
    );
  }
}
