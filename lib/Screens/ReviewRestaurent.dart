import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewRestaurent extends StatelessWidget {
  const ReviewRestaurent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Cart",
                        style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(31, 102, 101, 101),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(10, 20),
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/pizzaHut.png"),
                          filterQuality: FilterQuality.high)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "How was you last\norder from Pizza Hut?",
              style: GoogleFonts.poppins(
                fontSize: 20.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Good",
            style: GoogleFonts.poppins(
                fontSize: 18.sp,
                color: Colors.orange.shade800,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedRatingStars(
              onChanged: (p0) {},
              customFilledIcon: Icons.star,
              customHalfFilledIcon: Icons.star_half,
              customEmptyIcon: Icons.star_border),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Write",
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(95, 163, 163, 163),
                        spreadRadius: 1,
                        blurRadius: 30,
                        offset: Offset(00, 20))
                  ],
                  color: Colors.orange.shade800,
                  borderRadius: BorderRadius.circular(30)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Save",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(221, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
