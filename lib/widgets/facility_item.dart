import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imgURL;
  final int total;

  const FacilityItem({this.name = "", this.imgURL = "", this.total = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgURL,
          width: 32,
        ),
        const SizedBox(
          height: 2,
        ),
        Text.rich(TextSpan(
            text: '$total',
            style: txtPurple.copyWith(fontSize: 14),
            children: [
              TextSpan(text: " $name", style: txtGray.copyWith(fontSize: 14))
            ])),
      ],
    );
  }
}
