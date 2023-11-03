import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Address.dart';
import 'package:foodhub/Screens/Logins/Login.dart';
import 'package:foodhub/Screens/OrderPage.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/dashboardTextField.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/dashboardTopList.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/dashboardTopList02.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/dashboardTopList03.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/filterContainer.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/textRow02.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/textRow04.dart';
import 'package:foodhub/Widgets/DashBoardWidgets/topTitle.dart';
import 'package:foodhub/Widgets/Views/profile2.dart';
import 'package:foodhub/Shimmer/shimmer2.dart';
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
            margin: EdgeInsets.only(left: 0),
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
                  child: const Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
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
                          Navigator.pop(
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
              future: Future.delayed(Duration(seconds: 2)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height - 200,
                      child: const Shimmer02());
                } else {
                  return const Column(
                    children: [
                      // ... Your existing code ...
                      TopTitle(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DashboardTextField(),
                            //Search Container
                            FilterContainer(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TopListView(),
                      SizedBox(
                        height: 40,
                      ),
                      //Featured Restaurent Text
                      TextRow02(),
                      SizedBox(
                        height: 5,
                      ),
                      TopList2(),
                      SizedBox(
                        height: 20,
                      ), //Popular Items Text
                      TextRow04(),
                      SizedBox(
                        height: 10,
                      ),
                      TopList3(),
                      SizedBox(
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
