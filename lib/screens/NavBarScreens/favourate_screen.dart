import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavourateScreen extends StatelessWidget {
   FavourateScreen({super.key});

  List images = [
    "assets/decor2.jpg","assets/decor4.jpg", "assets/sofa1.jpg", "assets/sofa2.jpg","assets/dinning7.jpg",
    "assets/dinning8.jpg","assets/chair (5).jpg","assets/chair (1).jpg",
    "assets/chair (3).jpg","assets/tv (1).jpg","assets/tv (2).jpg",
    "assets/living2.jpg","assets/living3.jpg","assets/living5.jpg"];

   List productTitle = [
     "Lamb", "Storage", "Modern Sofa","Classic Sofa",
     "Table", "Classic Dining", "Comfy Chair", "Modern Chair", "Classic Chair",
     "Modern TV Unit", "Wooden TV Unit", "Classic Living", "Modern Living", "Sofa Living"
   ];

   List price = [
     "\$4500", "\$15000", "\$5000", "\$20000", "\$5000", "\$6000",
     "\$1000", "\$2000", "\$2500", "\$5000", "\$7000", "\$8000", "\$9000", "\$12000"
   ];

   List rating = [
     "87", "100", "230", "67", "120", "140",
     "110", "90", "130", "90", "120", "210", "190", "160"
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: const Text("Favourite items",
          style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
         centerTitle: true,
        // leading: const BackButton(),
         backgroundColor: Colors.transparent,
         foregroundColor: Colors.black,
         elevation: 0,
        ),
    backgroundColor: const Color(0xfffaf7f0),
    body: SingleChildScrollView(
      child: SafeArea(
      child: Padding(
      padding:
      const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
      child: Center(
      child: GridView.builder(
          itemCount: images.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.67,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return  Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // height: 100,
                    // width: 100,
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.asset(images[index]),
                          ),
                        ),
                        Positioned(
                            right: 5,
                            top: 5,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Color(0xfffaf7f0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(child: Icon(Icons.favorite, color: Colors.red, size: 15,),),
                            ))
                      ],
                    ),),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productTitle[index],
                        style: const TextStyle(color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(price[index], style: const TextStyle(
                              color: Color(0xffb17457),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),),
                          const SizedBox(width: 4,),
                          const Icon(
                            CupertinoIcons.star_lefthalf_fill,
                            color: Colors.amber, size: 15,),
                          const SizedBox(width: 4,),
                          Text("(" + rating[index] + ")" , style: TextStyle(fontSize: 15 )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
      )
      )
      ),
    )
    );
  }
}
