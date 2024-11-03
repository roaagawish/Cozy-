import 'package:cozy/screens/NavBarScreens/cart_screen.dart';
import 'package:cozy/screens/NavBarScreens/favourate_screen.dart';
import 'package:cozy/screens/NavBarScreens/home_screen.dart';
import 'package:cozy/screens/payment_screen.dart';
import 'package:cozy/screens/product_screen.dart';
import 'package:cozy/screens/introScreens/login_screen.dart';
import 'package:cozy/screens/NavBarScreens/navigation_bar_screen.dart';
import 'package:cozy/screens/ForgotPasswordScreens/reset_password_screen.dart';
import 'package:cozy/screens/introScreens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
Color projectColor = const Color(0xff7c93c3) ;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cozy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const  Color(0xfffaf7f0)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


// headline color :
// normal text color :
// small text color :
// button color : Color(0xffb17457)
// light color : Color(0xfffaf7f0)

//  final bigTextStyle = const TextStyle(
//       color: Color(0xff1a3636),
//       fontSize: 20,
//       fontWeight: FontWeight.bold);
//
//  final smallTextStyle = const TextStyle(
//       color: Color(0xff40534c),
//       fontSize: 18,
//       fontWeight: FontWeight.w500);