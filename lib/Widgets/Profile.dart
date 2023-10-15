import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Dashboard.dart';

import 'package:foodhub/Widgets/avatar.dart';
import 'package:page_transition/page_transition.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ... your existing code ...
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/vector-bg.png"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const Dashboard()));
              },
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 236, 234, 234),
                          blurRadius: 20,
                          spreadRadius: 1)
                    ]),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // Center the Avatar widget at the bottom
          Positioned(
            left: (MediaQuery.of(context).size.width - 200) /
                2, // Adjust this value as needed
            bottom: 0, // Place the Avatar at the bottom
            child: Container(
              height: 200,
              width: 200,
              child: Avatar(),
            ),
          ),
        ],
      ),
    );
  }
}
