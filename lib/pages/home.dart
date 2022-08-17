import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: edge,
        ),
        child: ListView(
          children: [
            //* NOTE: HEADER / TITLE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore now",
                style: txtBlack.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Looking for some cozy kosan",
                style: txtGray.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular cities",
                style: txtRegular.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 1,
                      name: "Jakarta",
                      imgURL: "assets/pic.png",
                      isPopular: false)),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: "Bandung",
                        imgURL: "assets/pic-1.png",
                        isPopular: true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: "Jogjakarta",
                        imgURL: "assets/pic-2.png",
                        isPopular: false),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recommended Space",
                style: txtRegular.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                SpaceCard()
              ],
            )
          ],
        ),
      )),
    );
  }
}
