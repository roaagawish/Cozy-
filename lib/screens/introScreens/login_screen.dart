import 'package:cozy/screens/NavBarScreens/navigation_bar_screen.dart';
import 'package:cozy/screens/introScreens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../ForgotPasswordScreens/forgot_password.dart';
import '../ForgotPasswordScreens/forgot_password_email_screen.dart';
import '../NavBarScreens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Icon visiable = const Icon(Icons.visibility_sharp);
  Icon nonvisiable = const Icon(Icons.visibility_off_sharp);
  bool passobscure = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
          Lottie.asset("assets/login.json"),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: passobscure,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xffb17457),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passobscure = !passobscure;
                      });
                    },
                    icon: passobscure ? nonvisiable : visiable,
                    color: const Color(0xffb17457),
                  ),
                ),
              ),
              Align(alignment: Alignment.bottomRight,child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                } ,
                child: const Text("Forgot Password" , style:  TextStyle(color: Color(0xffb17457) , fontSize: 18 ),),
              ),),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffb17457),
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavBarScreen()));
                  },
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?" , style: TextStyle(color: Colors.black54 , fontSize: 18),),
                  const SizedBox(width: 10,),
                  TextButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  }, child: const Text("Sign Up" , style:  TextStyle(color: Color(0xffb17457) , fontSize: 18 ),), )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
