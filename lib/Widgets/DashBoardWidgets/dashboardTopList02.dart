import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Food_Details.dart';
import 'package:foodhub/Widgets/card.dart';
import 'package:page_transition/page_transition.dart';

class TopList2 extends StatelessWidget {
  const TopList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Food_Details()));
              },
              child: card(
                image: "assets/images/card01.png",
                mainText: "McDonald's ",
              )),
          card(
            image: "assets/images/card02.png",
            mainText: "McDonald's ",
          ),
          card(
            image: "assets/images/card01.png",
            mainText: "McDonald's ",
          )
        ],
      ),
    );
  }
}
