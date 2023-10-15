import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/avatar.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0.01,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: const Color.fromARGB(66, 88, 88, 88),
                        spreadRadius: 1,
                        blurRadius: 15,
                      ),
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.white),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // Add spacing between the avatar and text
          Text(
            'Danish Awan', // Replace with the desired text
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black, // Adjust text color as needed
            ),
          ),
          const SizedBox(height: 8), // Add spacing between the avatar and text
          Text(
            'Your Profile', // Replace with the desired text
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87, // Adjust text color as needed
            ),
          ),
        ],
      ),
    );
  }
}
