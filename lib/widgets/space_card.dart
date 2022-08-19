import 'package:cozy/pages/detail.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';
import '../models/space.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(space)),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageURL ?? "",
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Icon_star_solid.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: txtWhite.copyWith(
                                fontSize: 13, color: whiteColor),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name ?? "",
                style: txtBlack.copyWith(fontSize: 18),
              ),
              const SizedBox(
                width: 2,
              ),
              Text.rich(TextSpan(
                  text: '\$${space.price}',
                  style: txtPurple.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: " / month", style: txtGray.copyWith(fontSize: 16))
                  ])),
              const SizedBox(
                height: 16,
              ),
              Text(
                "${space.city}, ${space.country}",
                style: txtGray,
              )
            ],
          ),
        ],
      ),
    );
  }
}
