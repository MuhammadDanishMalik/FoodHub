import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Address.dart';
import 'package:foodhub/Screens/Categories.dart';
import 'package:foodhub/Screens/Food_Details.dart';
import 'package:foodhub/Screens/Logins/Login.dart';
import 'package:foodhub/Screens/OrderPage.dart';
import 'package:foodhub/Widgets/Views/profile2.dart';
import 'package:foodhub/Widgets/Views/shimmer2.dart';
import 'package:foodhub/Widgets/card.dart';
import 'package:foodhub/Widgets/card02.dart';
import 'package:foodhub/Widgets/categories.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Container(
            margin: EdgeInsets.only(left: 0), // Add left margin
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer(); // Open the drawer
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            child: ProfileScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 252, 214, 211),
                                blurRadius: 20,
                                spreadRadius: 1)
                          ]),
                      child: Image.asset(
                        "assets/images/avatar.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: SafeArea(
        child: GFDrawer(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar.png"),
                          radius: 40,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Danish Awan",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "danishawan@gmail.com",
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      title: Text(
                        "My Orders",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/myorders.png"))),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: OrderPage()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        "My Profile",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/myprofile.png"))),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: ProfileScreen()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Delivery Address",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/deliveryaddress.png"))),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: AddressScreen()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Payment Method",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/paymentmethod.png"))),
                      ),
                      // onTap: () {
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (BuildContext context) {
                      //     return OrderPage();
                      //   }));
                      // },
                    ),
                    ListTile(
                      title: Text(
                        "Contact Us",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/contactus.png"))),
                      ),
                      onTap: () {
                        // Add your navigation logic here
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Setting",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/setting.png"))),
                      ),
                      onTap: () {
                        // Add your navigation logic here
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Helps",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/helps.png"))),
                      ),
                      onTap: () {
                        // Add your navigation logic here
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Login()));
                        },
                        child: Container(
                          height: 45,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 99, 18),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 35,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.login,
                                color: Colors.orange,
                                size: 20,
                              ),
                            ),
                            Text(
                              "  Log out",
                              style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Circular Progress Indicator that shows for 3 seconds
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height - 200,
                      child: Shimmer02());
                } else {
                  return Column(
                    children: [
                      // ... Your existing code ...
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          children: [
                            Text(
                              "What would you like\nfor order",
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(31, 112, 112, 112)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                  ),
                                  textInputAction: TextInputAction.none,
                                  obscureText: false,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusColor: Colors.black26,
                                    fillColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    filled: true,
                                    prefixIcon: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05, // Adjust this value
                                      width: MediaQuery.of(context).size.width *
                                          0.05, // Adjust this value
                                      child: const Icon(
                                        Icons.search,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    prefixIconColor:
                                        const Color.fromARGB(255, 3, 190, 150),

                                    hintText:
                                        "Find for food or restaurants", // Use hintText instead of label
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //Search Container
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: const [
                                    BoxShadow(
                                        color:
                                            Color.fromARGB(115, 202, 202, 202),
                                        offset: Offset(0, 14),
                                        blurRadius: 20,
                                        spreadRadius: 1)
                                  ]),
                              child: Icon(Icons.tune,
                                  color: Colors.orange.shade800),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Container(
                          height: 112,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Categories(
                                  image: "assets/images/burger.png",
                                  text: "Burger",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Categories(
                                  image: "assets/images/donat.png",
                                  text: "Donat",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Categories(
                                  image: "assets/images/pizza.png",
                                  text: "Pizza",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Categories(
                                  image: "assets/images/mexican.png",
                                  text: "Mexican",
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Categories(
                                  image: "assets/images/icecream.png",
                                  text: "Cream",
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured Reastaurents",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        child: CategoriesScreen()));
                              },
                              child: Text(
                                "See All",
                                style: GoogleFonts.poppins(
                                  fontSize: 15.sp,
                                  color:
                                      const Color.fromARGB(255, 255, 105, 36),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          height: 260,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            child: Food_Details()));
                                  },
                                  child: card(
                                    image: "assets/images/card01.png",
                                    mainText: "McDonald's ",
                                  )),
                              card(
                                image: "assets/images/card02.png",
                                mainText: "McDonald's ",
                              ),
                              card(
                                image: "assets/images/card01.png",
                                mainText: "McDonald's ",
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Items",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Row(children: [
                          card02(
                            image: "assets/images/noodles.png",
                            Rating: "\$ 4.3 ",
                            mainText: "McDonald's ",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          card02(
                            image: "assets/images/pizza2.png",
                            Rating: "\$ 4.3 ",
                            mainText: "McDonald's ",
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                      // Rest of your widgets
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
