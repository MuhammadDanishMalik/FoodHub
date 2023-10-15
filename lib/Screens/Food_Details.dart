import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Dashboard.dart';
import 'package:foodhub/Screens/Reviews.dart';
import 'package:foodhub/Screens/OrderPage.dart';
import 'package:foodhub/Screens/ReviewRestaurent.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Food_Details extends StatefulWidget {
  const Food_Details({super.key});

  @override
  State<Food_Details> createState() => _Food_DetailsState();
}

class _Food_DetailsState extends State<Food_Details> {
  bool isSelected = false;
  int quantityCount = 1;

  void decrementQuantity() {
    if (quantityCount > 1) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2400,
              width: MediaQuery.of(context).size.width * 00.9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/card01.png"),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Dashboard()));
                            },
                            child: Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(255, 236, 234, 234),
                                        blurRadius: 20,
                                        spreadRadius: 1)
                                  ]),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade600,
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/star.png"))),
                ),
                Text(
                  "4.5 ",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "( 30+ )",
                  style:
                      GoogleFonts.poppins(fontSize: 13.sp, color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: ReviewScreen()));
                  },
                  child: Text(
                    "See Review",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.orange.shade700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "\$",
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    color: Colors.orange.shade700,
                  ),
                ),
                Text(
                  "9.50",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.orange.shade700,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: decrementQuantity,
                        customBorder: CircleBorder(),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: Colors.orange.shade700,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      child: Center(
                        child: Text(
                          quantityCount.toString(),
                          style: GoogleFonts.poppins(
                              color: Colors.orange.shade700,
                              fontSize: 16.sp), // Adjust the font size
                        ),
                      ),
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade700,
                        border: Border.all(
                          color: Colors.orange.shade700,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: incrementQuantity,
                        customBorder: CircleBorder(),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh chopped. Spices – chili powder, cumin, onion powder."),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Choice of Add On",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.1100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/cart01.png",
                          ),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Pepper Julienned",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  "+\$2.30",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange.shade800),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (isSelected) // Conditionally add the inner container
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.04,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade800,
                            shape: BoxShape.circle,
                          ),
                        ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: OrderPage()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
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
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/bag.png"))),
                            ),
                          ],
                        )),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add to Cart",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: const Color.fromARGB(221, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
