import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardTextField extends StatelessWidget {
  const DashboardTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(31, 112, 112, 112)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: 13,
              ),
              textInputAction: TextInputAction.none,
              obscureText: false,
              textAlignVertical: TextAlignVertical.bottom,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusColor: Colors.black26,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
                prefixIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.of(context).size.height *
                      0.05, // Adjust this value
                  width: MediaQuery.of(context).size.width *
                      0.05, // Adjust this value
                  child: const Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ),
                prefixIconColor: const Color.fromARGB(255, 3, 190, 150),

                hintText:
                    "Find for food or restaurants", // Use hintText instead of label
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
