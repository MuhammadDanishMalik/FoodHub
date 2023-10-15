import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Logins/Register.dart';
import 'dart:async';

import 'package:foodhub/Screens/Logins/welcome.dart'; // Import the async library

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation after 2 seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              Register(), // Replace 'NextScreen' with your desired screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 81, 0),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splashvector.png"),
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Next Screen"),
      ),
    );
  }
}
