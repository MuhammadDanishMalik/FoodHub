import 'package:flutter/material.dart';

class PassTextField extends StatefulWidget {
  final String MainText;

  PassTextField({required this.MainText});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<PassTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              spreadRadius: 1,
              color: Color.fromARGB(17, 3, 4, 90),
            ),
          ],
        ),
        child: TextField(
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.none,
          obscureText: !_isPasswordVisible,
          keyboardType: TextInputType.emailAddress,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                vertical: 8, horizontal: 12), // Adjust the vertical padding
            fillColor: Color.fromARGB(255, 252, 252, 252),
            filled: true,
            labelText: widget.MainText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 81, 0),
                ),
                borderRadius: BorderRadius.circular(10)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              child: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
