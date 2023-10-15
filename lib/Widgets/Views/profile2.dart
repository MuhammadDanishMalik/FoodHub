import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/Profile.dart';
import 'package:foodhub/Widgets/password_field.dart';
import 'package:foodhub/Widgets/text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Profile(),
          ),

          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "danishawan@gmail.com"),

          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "danishawan@gmail.com"),

          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "danishawan@gmail.com"),

          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
