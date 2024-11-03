import 'package:cozy/screens/introScreens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});


  final introkey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
     // globalBackgroundColor: Color(0xfffaf7f0),
      key: introkey,
      pages: [
        PageViewModel(
          title: 'Welcome to COZY',
          body: 'Shop effortlessly for stylish furniture with our user-friendly app, designed to provide a smooth and convenient experience.',
          image: Center(
            child: Lottie.asset("assets/cart.json"),
          ),
          decoration: const PageDecoration(
              titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
              bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 18),
          ),
        ),
        PageViewModel(
          title: 'Easy Payment',
          body: 'We offer a seamless payment experience with multiple easy and secure payment options.',
          image: Center(
            child:Lottie.asset("assets/splash2.json"),
          ),
          decoration: const PageDecoration(
              titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
              bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 18)),
        ),
        PageViewModel(
            title: 'Fast Delivery',
            body: 'Enjoy fast delivery for all your furniture purchases, ensuring your items arrive quickly and on time.',
            image: Center(
              child:Lottie.asset("assets/box.json"),
            ),
            decoration: const PageDecoration(
                titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 18),
                imagePadding: EdgeInsets.only(top: 40),
            ),

            footer: Padding(
              padding: const EdgeInsets.only(left: 10 , right: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffb17457),
                  minimumSize: const Size.fromHeight(55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text("Let's shop now",
                    style: TextStyle(color: Color(0xfffaf7f0), fontSize: 25)),
              ),
            )),
      ],
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeColor: const Color(0xffb17457),
        activeSize: const Size(20,10),
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      showDoneButton: false,
      showSkipButton: false,
      showNextButton: true,
      showBackButton: true,
      //skip: const Text("Skip", style: TextStyle(fontSize: 30, color: Colors.white),),
      next: const Text("Next", style: TextStyle(fontSize: 20, color: Color(0xffb17457),),),
      back: const Text("Back", style: TextStyle(fontSize: 20, color: Color(0xffb17457),),
      ),
      onSkip: () {},
      onDone: () {},
    );
  }
}
