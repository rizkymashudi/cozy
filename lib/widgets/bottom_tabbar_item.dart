import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  final String imageURL;
  final bool isActive;

  BottomTabBar({this.imageURL = "", this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imageURL, width: 26),
        Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(1000))),
        ) : Container()
      ],
    );
  }
}
