import 'package:flutter/material.dart';
import 'package:my_stock/src/common/constants.dart';
import 'package:my_stock/src/pages/welcome/widget/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                Constants.IMAGE_TEN_YEAR,
                width: size.width * 0.8,
              ),
              SizedBox(height: 32),
              RoundedButton(
                onPress: () {},
              ),
              RoundedButton(
                title: "SIGN UP",
                color: Colors.blue,
                onPress: () {},
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: 120,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 90,
            ),
          ),
        ],
      ),
    );
  }
}
