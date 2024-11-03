import 'package:cozy/widgets/btn.dart';
import 'package:flutter/material.dart';
import '../screens/NavBarScreens/cart_screen.dart';

class DetailsPopup extends StatelessWidget {


  final iStyle = const TextStyle(
      color: Color(0xff1a3636),
      fontSize: 20,
      //fontWeight: FontWeight.bold
      );

  final iStyleSmall = const TextStyle(
      color: Color(0xff1a3630),
      fontSize: 20,
       fontWeight: FontWeight.w700);

 // final iColors=[Color(0xff800000) ,Color(0xff697565),Color(0xffd6bd98),Color(0xff03346e) ];
 final iColors=[Color(0xffd6bd98),Colors.grey[400],Colors.black,Colors.yellow[700],Colors.grey[200] ,Colors.green[100], Color(0xff001f3f) ];
  DetailsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: MediaQuery.sizeOf(context).height/ 2.3 ,
              decoration: const BoxDecoration(
                color:Color(0xfffaf7f0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Color", style: iStyle ,),
                          const SizedBox(width: 25,),
                          for(int i=0 ; i<7; i++)
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: iColors[i],
                              ),
                            ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Items", style: iStyle ,),
                          const SizedBox(width: 50,),
                          Text("-", style: iStyleSmall,),
                          const SizedBox(width: 5,),
                          Text("1", style: iStyleSmall,),
                          const SizedBox(width: 5,),
                          Text("+", style: iStyleSmall,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Price", style: iStyle ,),
                          const SizedBox(width: 50,),
                          const Text("\$4000", style:TextStyle(
                              color: Color(0xffb17457) ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  CartScreen()));
                        },
                        child: ButtonTemplet(
                          containerWidth: MediaQuery.sizeOf(context).width ,
                          itext: "Checkout",
                          bgColor: const Color(0xffb17457),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
      },
      child: ButtonTemplet(
        containerWidth:MediaQuery.sizeOf(context).width/ 1.5 ,
        itext: "Buy Now",
        bgColor:  const Color(0xffb17457),
      ),
    );
  }
}
