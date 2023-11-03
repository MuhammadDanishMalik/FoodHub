import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/categories.dart';

class TopListView extends StatelessWidget {
  const TopListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        height: 112,
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              Categories(
                image: "assets/images/burger.png",
                text: "Burger",
              ),
              const SizedBox(
                width: 20,
              ),
              Categories(
                image: "assets/images/donat.png",
                text: "Donat",
              ),
              const SizedBox(
                width: 20,
              ),
              Categories(
                image: "assets/images/pizza.png",
                text: "Pizza",
              ),
              const SizedBox(
                width: 20,
              ),
              Categories(
                image: "assets/images/mexican.png",
                text: "Mexican",
              ),
              const SizedBox(
                width: 20,
              ),
              Categories(
                image: "assets/images/icecream.png",
                text: "Cream",
              ),
            ]),
      ),
    );
  }
}
