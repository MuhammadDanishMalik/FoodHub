import 'package:flutter/material.dart';
import 'package:foodhub/Widgets/OrderTab2.dart';
import 'package:foodhub/Screens/OrderTab1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Cart",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87, fontSize: 17.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                ],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      // height: 50,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        color: Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: Colors.orange.shade800,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              indicatorColor:
                                  const Color.fromARGB(255, 241, 241, 241),
                              unselectedLabelColor: Colors.orange.shade800,
                              labelColor: Colors.white,
                              controller: tabController,
                              tabs: const [
                                Tab(
                                  text: "Upcoming",
                                ),
                                Tab(
                                  text: "History",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: TabBarView(
                          controller: tabController,
                          children: [OrderTab1(), OrderTab2()]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
