import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/CategoriesCard.dart';
import 'package:foodhub/Widgets/card.dart';

class FavTab1 extends StatelessWidget {
  const FavTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          CategoriesCard(),
          CategoriesCard(),
          CategoriesCard(),
        ]),
      ),
    );
  }
}
