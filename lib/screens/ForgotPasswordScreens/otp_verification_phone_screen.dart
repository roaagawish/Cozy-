import 'package:cozy/screens/ForgotPasswordScreens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class OTPVerificationPhone extends StatelessWidget {
   OTPVerificationPhone({super.key});

  //late String value ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
     // backgroundColor: Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset("assets/otp.json", width: 400, height: 200,),
              //const Image(image: AssetImage("assets/otp.png" ) , width: 300, height: 150, ),
              const SizedBox(
                height: 10,
              ),
              const Text("Verify Your Phone Number" , style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0 , right: 20.0),
                child: Text("Please Enter The 4 Digit Code Sent to You Via Messages To Number +201234567899 " , style: TextStyle(color: Colors.black54 , fontSize: 18 ) , textAlign: TextAlign.center,),
              ),
              const SizedBox(
                height: 30,
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height:68 ,
                      width: 64,
                      child: TextField(
                        style: const TextStyle(fontSize: 20),
                        onChanged: (value) {
                          if (value.length ==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1) ,
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height:68 ,
                      width: 64,
                      child: TextField(
                        style: const TextStyle(fontSize: 20),
                        onChanged: (value) {
                          if (value.length ==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1) ,
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height:68 ,
                      width: 64,
                      child: TextField(
                        style: const TextStyle(fontSize: 20),
                        onChanged: (value) {
                          if (value.length ==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1) ,
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height:68 ,
                      width: 64,
                      child: TextField(
                        style: const TextStyle(fontSize: 20),
                        onChanged: (value) {
                          if (value.length ==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: const TextInputType.numberWithOptions(),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1) ,
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                            )
                        ),
                      ),
                    ),
                  ],
                               ),
               ),

              const SizedBox(height: 20,),
              TextButton(onPressed: () {}, child: const Text("Resend Code" ,  style:  TextStyle(color: Color(0xffb17457) , fontSize: 18 ))),
              const SizedBox(
                height: 30,
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
                            builder: (context) => const ResetPassword()));
                  },
                  child: const Text("Verify",
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
