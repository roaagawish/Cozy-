import 'package:cozy/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/btn.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List images = [
    "assets/chair (1).jpg",
    "assets/sofa1.jpg",
    "assets/chair (2).jpg",
    "assets/dinning8.jpg",

  ];

  List productTitle = ["Chair", "Sofa", "Chair", "Dinning"];
  List productDetailes = ["Modern Chair", "Modern Sofa", "Classic Chair", "Modern Dinning"];
  List price = ["\$3000", "\$2000", "\$2500", "\$15000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: const Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only( top : 5 , left: 10 , right: 10 , bottom: 10),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                              value: true,
                              splashRadius: 20,
                              activeColor: const Color(0xffb17457),
                              onChanged: (val) {}),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              images[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitle[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text( productDetailes[index],
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                price[index],
                                style: const TextStyle(
                                    color: Color(0xffb17457),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(CupertinoIcons.plus),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      "Select All", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(
                      value: false ,
                      splashRadius: 20,
                      activeColor: const Color(0xffb17457),
                      onChanged: (val){},
                  ),
                ],
              ),
              Divider(thickness: 1, color: Colors.grey[300]),
              const SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment:", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$900", style: TextStyle(color: Color(0xffb17457), fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PaymentMethodsScreen()));
                },
                child: ButtonTemplet(
                  containerWidth: MediaQuery.sizeOf(context).width,
                  bgColor: const Color(0xffb17457),
                  itext: "Checkout",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
