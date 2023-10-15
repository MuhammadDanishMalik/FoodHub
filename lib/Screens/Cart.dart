import 'package:flutter/material.dart';
import 'package:foodhub/Screens/OrderPage.dart';
import 'package:foodhub/Widgets/cart_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                              color: const Color.fromARGB(255, 39, 39, 39)),
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
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            cart_card(),
            cart_card(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo Code",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.black54),
                      ),
                      Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orange.shade800,
                            borderRadius: BorderRadius.circular(25)),
                        alignment: Alignment.center,
                        child: Text(
                          "Apply",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "\$27.30",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 36, 36, 36),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "USD",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "\$27.30",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 36, 36, 36),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "USD",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 17, 17, 17),
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "\$27.30",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 36, 36, 36),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "USD",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Spacer(),
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Checkout",
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            color: const Color.fromARGB(221, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
