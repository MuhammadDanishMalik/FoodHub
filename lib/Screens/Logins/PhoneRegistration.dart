import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Logins/Login.dart';
import 'package:foodhub/Screens/Logins/Register.dart';
import 'package:foodhub/Widgets/password_field.dart';
import 'package:foodhub/Widgets/text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhoneRegistration extends StatelessWidget {
  const PhoneRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 10,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/vector.png"),
                filterQuality: FilterQuality.high,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Register()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.085,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Registration",
                  style: GoogleFonts.poppins(
                    fontSize: 22.sp,
                    color: const Color.fromARGB(221, 29, 29, 29),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Enter your phone number to\nverfiy account",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25), // Adjust this value as needed
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Center(
                  child: IntlPhoneField(
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    initialCountryCode: "PK",
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Login()));
                  }, // Call the provided onPressed callback when pressed
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 105, 36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.02500,
                      horizontal: MediaQuery.of(context).size.width * 0.1500,
                    ),
                  ),
                  child: Text(
                    "Send new password",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
