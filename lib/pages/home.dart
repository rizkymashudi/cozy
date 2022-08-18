import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_tabbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(
                height: edge,
              ),
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
              // * POPULAR CITIES
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
              // * RECOMMENDED SPACE
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(Space(
                        id: 1,
                        name: "Kuretakeso Hott",
                        imageURL: "assets/image13.png",
                        price: 52,
                        city: "Jakarta",
                        country: "Indonesia",
                        rating: 4)),
                    const SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 2,
                        name: "Roemah nenek",
                        imageURL: "assets/image14.png",
                        price: 11,
                        city: "Jogja",
                        country: "Indonesia",
                        rating: 4)),
                    const SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 3,
                        name: "Darrling Howw",
                        imageURL: "assets/image15.png",
                        price: 20,
                        city: "Bandung",
                        country: "Indonesia",
                        rating: 4)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // * TIPS AND GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Tips & Guidance",
                  style: txtRegular.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1,
                        title: "City Guidelines",
                        imageURL: 'assets/icon-cg.png',
                        updatedAt: '20 June'
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tips(
                        id: 2,
                        title: "Jakarta Fairship",
                        imageURL: 'assets/icon-jf.png',
                        updatedAt: '17 Aug'
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80 + edge,
              ),
              
            ],
          ),
       ),
       floatingActionButton: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * edge),
          margin: EdgeInsets.symmetric(
            horizontal: edge
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 239, 239, 239),
            borderRadius: BorderRadius.circular(23)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomTabBar(
                imageURL: 'assets/icons/ic-home.png',
                isActive: true,
              ),
              BottomTabBar(
                imageURL: 'assets/icons/ic-mail.png',
                isActive: false,
              ),
              BottomTabBar(
                imageURL: 'assets/icons/ic-card.png',
                isActive: false,
              ),
              BottomTabBar(
                imageURL: 'assets/icons/ic-fav.png',
                isActive: false,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
