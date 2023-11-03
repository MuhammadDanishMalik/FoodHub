import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/card02.dart';

class TopList3 extends StatelessWidget {
  const TopList3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(children: [
        card02(
          image: "assets/images/noodles.png",
          Rating: "\$ 4.3 ",
          mainText: "McDonald's ",
        ),
        const SizedBox(
          width: 10,
        ),
        card02(
          image: "assets/images/pizza2.png",
          Rating: "\$ 4.3 ",
          mainText: "McDonald's ",
        ),
      ]),
    );
  }
}
