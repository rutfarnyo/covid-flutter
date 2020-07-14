import 'package:flutter/material.dart';
import 'package:my_stock/src/pages/home/widget/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }
}
