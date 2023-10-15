import 'package:flutter/material.dart';

class Text_field extends StatelessWidget {
  final String Maintext;

  Text_field({required this.Maintext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 30,
            spreadRadius: 1,
            color: Color.fromARGB(17, 3, 4, 90),
          ),
        ]),
        child: TextField(
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: 8, horizontal: 8), // Adjust the padding
              fillColor: Color.fromARGB(255, 252, 252, 252),
              filled: true,
              labelText: Maintext,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 255, 102, 0),
                  ),
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
