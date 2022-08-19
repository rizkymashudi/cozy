import 'package:cozy/models/space.dart';
import 'package:cozy/pages/error.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Space space;
  const DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // * Thumbnail image
            Image.network(
              space.imageURL ?? "",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                // * Container Detail Information
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      // * Detail header info
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.name ?? "",
                                  style: txtBlack.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(TextSpan(
                                    text: '\$${space.price}',
                                    style: txtPurple.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: " / month",
                                          style: txtGray.copyWith(fontSize: 16))
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/Icon_star_solid.png',
                                  width: 20,
                                  color: grayColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // * Detail Main facilites
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Main facilites",
                          style: txtRegular.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'kitchen',
                              imgURL: 'assets/001-bar-counter.png',
                              total: space.numberOfKitchens ?? 0,
                            ),
                            FacilityItem(
                              name: 'bed',
                              imgURL: 'assets/002-double-bed.png',
                              total: space.numberOfBedrooms ?? 0,
                            ),
                            FacilityItem(
                              name: 'lemari',
                              imgURL: 'assets/003-cupboard.png',
                              total: space.numberOfCupboards ?? 0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // * Detail photo
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Photos',
                          style: txtRegular.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 88,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: space.photos!.map((photo) {
                              return Container(
                                margin: EdgeInsets.only(left: edge),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.network(
                                    photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }).toList()),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // * Location
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Location',
                          style: txtRegular.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${space.address}\n${space.city}',
                              style: txtGray,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ErrorPage()));
                              },
                              child: Image.asset(
                                'assets/btn-location.png',
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17)),
                              primary: purpleColor),
                          child: Text(
                            'Book now',
                            style: txtWhite.copyWith(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            // * Top bar button back and fav
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
