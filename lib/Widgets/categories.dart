import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  final String text;
  final String image;

  Categories({required this.image, required this.text});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 255, 105, 36)
              : Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: const Color.fromARGB(31, 131, 131, 131))),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
