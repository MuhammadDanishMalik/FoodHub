import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

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
                          height: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              "Add new Address",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87, fontSize: 17.sp),
                            ),
                          ],
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
          toolbarHeight: 100,
        ),
        body: Column(children: [
          const SizedBox(height: 40),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Full Name",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "Danish Awan"),
          const SizedBox(height: 0),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Mobile Number",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "+92 309 8453140"),
          const SizedBox(height: 0),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "State",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "Punjab"),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Your City",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "Mianwali"),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Street (include house number)",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15), // Adjust this value as needed
          Text_field(Maintext: "House no 32/5 F11/ main street"),
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
