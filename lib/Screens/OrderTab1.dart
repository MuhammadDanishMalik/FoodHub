import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/CarTab2.dart';
import 'package:foodhub/Widgets/CartTab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderTab1 extends StatelessWidget {
  const OrderTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CartTab(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Lastest Order",
                      style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              CartTab2()
            ],
          ),
        ));
  }
}
