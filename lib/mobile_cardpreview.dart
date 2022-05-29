import 'package:flutter/material.dart';
import 'package:card_preview/reusable_card.dart';

class MobileCardpreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableCard(
                containerHeight: 510,
                containerWidth: 300,
                cardDecoration: BoxDecoration(
                  color: Color(0xffE28525),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                imagePath: "lib/images/icon-sedans.svg",
                typeText: "SEDANS",
                descriptionText:
                    "Choose a sedan for its\naffordability and excellent fuel\neconomy. Ideal for cruising in\nthe city or on your next road\ntrip.",
                descriptionTextColor: Color(0xffF9D7BE),
                buttonDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                buttonText: "Learn More",
                buttonTextColor: Color(0xffE28525),
              ),
              ReusableCard(
                containerHeight: 510,
                containerWidth: 300,
                cardDecoration: BoxDecoration(
                  color: Color(0xff016972),
                ),
                imagePath: "lib/images/icon-suvs.svg",
                typeText: "SUV     ",
                descriptionText:
                    "Take an SUV for its spacious\ninterior, power and versatility.\nPerfect for next family\nvecation and off-road\nadventures.",
                descriptionTextColor: Color(0xffF9D7BE),
                buttonDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                buttonText: "Learn More",
                buttonTextColor: Color(0xff016972),
              ),
              ReusableCard(
                containerHeight: 510,
                containerWidth: 300,
                cardDecoration: BoxDecoration(
                  color: Color(0xff00403F),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
                imagePath: "lib/images/icon-luxury.svg",
                typeText: "LUXURY",
                descriptionText:
                    "Cruise in the best car brands\nwithout the bloated prices.\nEnjoy the enhanced comfort\nof a luxury rental and arrive in\nstyle.",
                descriptionTextColor: Color(0xffF9D7BE),
                buttonDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                buttonText: "Learn More",
                buttonTextColor: Color(0xff00403F),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
