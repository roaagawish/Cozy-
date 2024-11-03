import 'package:cozy/screens/ForgotPasswordScreens/forgot_password_email_screen.dart';
import 'package:cozy/screens/ForgotPasswordScreens/otp_verification_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'forgot_password_phone_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xfffaf7f0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Lottie.asset("assets/forgot_password.json",),
                const SizedBox(
                  height: 10,
                ),
                const Text("Forgot Password" , style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.w500,)),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0 , right: 20.0),
                  child: Text("Please Choose Method To Receive a Verification Code." , style: TextStyle(color: Colors.black54 , fontSize: 18 ) , textAlign: TextAlign.center,),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffb17457),
                        minimumSize: const Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPasswordEmail()));
                    },
                    child: const Text("Verify With Email",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("OR",style: TextStyle(color: Colors.black54 , fontSize: 18 ) ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffb17457),
                        minimumSize: const Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordPhone.ForgotPasswordPhone()));
                    },
                    child: const Text("Verify with Phone ",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
