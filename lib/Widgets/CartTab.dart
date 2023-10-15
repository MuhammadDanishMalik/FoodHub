import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(31, 102, 101, 101),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(10, 20)),
                  ]),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
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
                                    image: AssetImage(
                                        "assets/images/starbucks.png"))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 Items",
                              style: GoogleFonts.poppins(
                                  fontSize: 14.sp, color: Colors.black54),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "StarBucks",
                              style: GoogleFonts.poppins(
                                  fontSize: 17.sp, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        "#264100",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            color: Colors.orange.shade800,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Estimated Arrival",
                        style: GoogleFonts.poppins(color: Colors.black38),
                      ),
                      Text(
                        "Now",
                        style: GoogleFonts.poppins(color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "25 ",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 20.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "min",
                          style: GoogleFonts.poppins(color: Colors.black87),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Food on the way",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(31, 97, 97, 97),
                                  spreadRadius: 1,
                                  blurRadius: 20,
                                  offset: Offset(0, 20)),
                            ]),
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, color: Colors.black87),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.orange.shade800,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(31, 97, 97, 97),
                                  spreadRadius: 1,
                                  blurRadius: 20,
                                  offset: Offset(0, 20)),
                            ]),
                        child: Text(
                          "Track Order",
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, color: Colors.white),
                        ),
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
