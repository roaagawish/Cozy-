import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../introScreens/login_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  Icon visiable = const Icon(Icons.visibility_sharp);
  Icon nonvisiable = const Icon(Icons.visibility_off_sharp);
  bool passobscure = true;

  Icon revisiable = const Icon(Icons.visibility_sharp);
  Icon renonvisiable = const Icon(Icons.visibility_off_sharp);
  bool repassobscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
     // backgroundColor: const Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/resetPass.json", width: 300, height: 150,),
              const SizedBox(
                height: 30,
              ),
              const Text("Reset Password" , style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.w500,)),
              const SizedBox(height: 20,),
              TextField(
                // controller: passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: passobscure,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Create New Password",
                  border: const OutlineInputBorder(),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                // controller: passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: repassobscure,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: const OutlineInputBorder(),
                  // prefixIcon: const Icon(
                  //   Icons.lock,
                  //   color: Color(0xffb17457),
                  // ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        repassobscure = !repassobscure;
                      });
                    },
                    icon: repassobscure ? renonvisiable : revisiable,
                    color: const Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
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
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Save & Login",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

