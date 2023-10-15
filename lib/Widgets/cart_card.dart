import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class cart_card extends StatefulWidget {
  const cart_card({super.key});

  @override
  State<cart_card> createState() => _cart_cardState();
}

class _cart_cardState extends State<cart_card> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/card01.png"),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "Red n hot pizza",
                  style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "Spicy Chickem, beef",
                  style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "\$12.00",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.orange.shade800,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Container(
                      width: 25.0,
                      height: 25.0,
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
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade700,
                          border: Border.all(
                            color: Colors.orange.shade700,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(0, 08),
                                color: Color.fromARGB(148, 255, 128, 0))
                          ]),
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
        ]),
      ),
    );
  }
}
