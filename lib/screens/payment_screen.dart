import 'package:cozy/screens/NavBarScreens/navigation_bar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/btn.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {

  int _type = 1;
  void _handelRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Method",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: const Color(0xfffaf7f0),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: const Color(0xffb17457))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handelRadio,
                              activeColor: const Color(0xffb17457),
                            ),
                            Text(
                              "Amazon Pay",
                              style: _type == 1
                                  ? const TextStyle(
                                  color:  Color(0xffb17457) ,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)
                                  : const TextStyle(color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("assets/amazonPay.png",  width: 90 , height: 90, fit: BoxFit.cover,),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1, color: const Color(0xffb17457))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _type,
                              onChanged: _handelRadio,
                              activeColor: const Color(0xffb17457),
                            ),
                            Text(
                              "Visa Pay",
                              style: _type == 2
                                  ? const TextStyle(
                                  color:  Color(0xffb17457) ,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)
                                  : const TextStyle(color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("assets/visa.png",  width: 100 , height: 50, fit: BoxFit.contain,),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 3
                        ? Border.all(width: 1, color: const Color(0xffb17457))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _type,
                              onChanged: _handelRadio,
                              activeColor: const Color(0xffb17457),
                            ),
                            Text(
                              "PayPal",
                              style: _type == 3
                                  ? const TextStyle( color :Color(0xffb17457) ,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)
                                  : const TextStyle(color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset("assets/paypal.webp",  width: 90 , height: 90, fit: BoxFit.cover,),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 4
                        ? Border.all(width: 1, color: const Color(0xffb17457))
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 4,
                              groupValue: _type,
                              onChanged: _handelRadio,
                              activeColor: const Color(0xffb17457),
                            ),
                            Text(
                              "Cash on Delivery",
                              style: _type == 4
                                  ? const TextStyle(
                                  color: Color(0xffb17457) ,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)
                                  : const TextStyle(color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 10),
                        //   child: Image.asset("assets/cash.webp",  width: 90 , height: 90, fit: BoxFit.contain,),
                        // ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub-Total Fee", style: TextStyle(color:  Colors.black87, fontSize: 16),
                    ),
                    Text(
                      "\$900.0", style: TextStyle(color:  Colors.black87, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee", style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                    Text(
                      "\$60.0", style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Divider(thickness: 1, color: Colors.grey[300]),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment:", style: TextStyle(color: Colors.black , fontSize: 20, ),
                    ),
                    Text(
                      "\$960.0", style: TextStyle(color: Colors.black, fontSize: 20, ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                InkWell(
                   onTap: () {
                   showDialog(
                     barrierDismissible: false,
                       context: context,
                       builder: (context) => AlertDialog(
                         backgroundColor: const Color(0xfffaf7f0),
                         //icon: ImageIcon(AssetImage("assets/confirm_Order.png")),
                         title:const Text("Congratulation") ,
                         content: const Text("Your order have been placed.Now You can track your order , you will find all the details on your profile. \n Let's continue shopping"),
                         actions: [
                           TextButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBarScreen()));
                           }, child: const Text("Back to Home" , style: TextStyle(color: Color(0xffb17457)),))
                         ],
                         actionsAlignment: MainAxisAlignment.center,
                       ));
                  },
                  child: ButtonTemplet(
                    containerWidth: MediaQuery.sizeOf(context).width,
                    bgColor: const Color(0xffb17457),
                    itext: "Checkout",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
