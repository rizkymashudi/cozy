import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import '../models/tips.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageURL,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: txtBlack.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Updated at ${tips.updatedAt}', style: txtGray)
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: grayColor,
            ))
      ],
    );
  }
}
