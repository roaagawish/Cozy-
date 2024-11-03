import 'package:cozy/screens/introScreens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Icon visiable = const Icon(Icons.visibility_sharp);
  Icon nonvisiable = const Icon(Icons.visibility_off_sharp);
  bool passobscure = true;

  Icon revisiable = const Icon(Icons.visibility_sharp);
  Icon renonvisiable = const Icon(Icons.visibility_off_sharp);
  bool repassobscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Lottie.asset("assets/login.json"),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                //controller: emailController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                //controller: emailController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                //controller: emailController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                //controller: emailController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone_android_rounded,
                    color: Color(0xffb17457),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                //controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
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
               // controller: passController,
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
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xffb17457),
                  ),
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
                  child: const Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Arealdy have an account?" , style: TextStyle(color: Colors.black54 , fontSize: 18),),
                  const SizedBox(width: 10,),
                  TextButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  }, child: const Text("Login" , style:  TextStyle(color: Color(0xffb17457) , fontSize: 18 ),), )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
