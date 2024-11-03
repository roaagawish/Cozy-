  import 'dart:async';
import 'package:cozy/screens/introScreens/onbording_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.push(context,
    MaterialPageRoute(builder: (context) =>  OnBoarding())) );
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/splash.jpg"),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cozy" , style: TextStyle(fontSize: 50 , color:Color(0xfff8ede3), fontWeight: FontWeight.bold),),
            Icon(Icons.shopping_cart_sharp , color: Color(0xfff8ede3), size: 50,),
            SizedBox(width: 10,),

          ],
        ),
      ),
    );
  }
}
