import 'package:flutter/material.dart';
import 'package:foodhub/Screens/Dashboard.dart';
import 'package:foodhub/Screens/Reviews.dart';
import 'package:foodhub/Screens/Address.dart';
import 'package:foodhub/Screens/Cart.dart';
import 'package:foodhub/Screens/Categories.dart';
import 'package:foodhub/Screens/Food_Details.dart';
import 'package:foodhub/Screens/Logins/Login.dart';
import 'package:foodhub/Screens/Logins/Register.dart';
import 'package:foodhub/Screens/Logins/PhoneRegistration.dart';
import 'package:foodhub/Screens/Logins/ResetPass.dart';
import 'package:foodhub/Screens/Logins/welcome.dart';
import 'package:foodhub/Screens/OrderPage.dart';
import 'package:foodhub/Screens/ReviewRestaurent.dart';
import 'package:foodhub/Screens/Splash.dart';
import 'package:foodhub/Widgets/Profile.dart';
import 'package:foodhub/Widgets/Views/card-shimmer.dart';
import 'package:foodhub/Widgets/Views/profile2.dart';
import 'package:foodhub/Shimmer/shimmer2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
        theme: ThemeData(),
      );
    });
  }
}
