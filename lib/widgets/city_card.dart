import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/cupertino.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                city.imgURL,
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              city.isPopular ? Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20))),
                  child: Center(
                      child: Image.asset(
                        'assets/Icon_star_solid.png',
                        width: 22,
                        height: 22,
                      )
                  ),
                ),
              ) : Container()
            ]),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: txtBlack.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
