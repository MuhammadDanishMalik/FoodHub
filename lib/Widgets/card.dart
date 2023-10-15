import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class card extends StatelessWidget {
  final String image;
  final String mainText;

  card({required this.image, required this.mainText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(16.0), // Adjust the radius as needed
        ),
        elevation: 5,
        shadowColor: Colors.black38,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "4.3 ",
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            child: Image.asset("assets/images/star.png"),
                          ),
                          Text(
                            " (+25)",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
            //above is image container
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                children: [
                  Text(
                    mainText,
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 14,
                    child: Image.asset(
                      "assets/images/verify.png",
                      filterQuality: FilterQuality.high,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    child: Image.asset(
                      "assets/images/rider.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Text(
                    " Free Delivery",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    child: Image.asset(
                      "assets/images/time.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Text(
                    " 10-15 mins",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: Text(
                      "Burger",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: Text(
                      "CHICKEN",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: Text(
                      "FAST FOOD",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.02,
                    width: MediaQuery.of(context).size.width * 0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: Text(
                      "FAST FOOD",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
