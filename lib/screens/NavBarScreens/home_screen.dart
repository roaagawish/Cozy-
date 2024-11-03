import 'package:cozy/screens/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabs = ["All", "Category", "Top", "Recommended", "Sales",];

  // New Arrival
  List imagesNewArrival = ["assets/decor1.jpg","assets/decor2.jpg" ,"assets/decor4.jpg","assets/sofa2.jpg","assets/dinning7.jpg","assets/dinning8.jpg",];
  List productTitleNewArrival = ["Shoes Unit","Lamp","Storage", "Sofa"," Table", "Dinning" ];
  List priceNewArrival = ["\$3000", "\$1000", "\$800","\$12000","\$30000","\$55000"];
  List ratingNewArrival = ["87", "100", "67","23","14","40"];

  // Best Sellers
  List imagesBestSeller = ["assets/chairBlack.jpg","assets/sofa1.jpg","assets/room.jpg","assets/dinning7.jpg","assets/dinning8.jpg",];
  List productTitleBestSeller = ["Sitting Corner", "Modern Sofa", "Room Decor", "Dining Set", "Classic Dining"];
  List priceBestSeller = ["\$20000", "\$1500", "\$3000", "\$50000", "\$60000"];
  List ratingBestSeller = ["150", "230", "75", "120", "140"];

// Chairs
  List imagesChair = ["assets/chair (11).jpg","assets/chair (4).jpg" ,"assets/chair (9).jpg","assets/chair (14).jpg","assets/chair (10).jpg","assets/chair (17).jpg","assets/chair (5).jpg",];
  List productTitleChair = ["Comfort Chair", "Luxury Chair", "Modern Chair", "Classic Chair", "Wooden Chair","Round Chair" ,"Outdoor Chair"];
  List priceChair = ["\$1000", "\$3000", "\$2500", "\$1500", "\$3500", "\$4000", "\$1800"];
  List ratingChair = ["110", "90", "130", "85", "97", "60", "50"];

// TV Units
  List imagesTv = ["assets/tv (1).jpg","assets/tv (2).jpg","assets/tv (3).jpg","assets/tv (4).jpg","assets/tv (5).jpg","assets/tv (6).jpg",];
  List productTitleTv = ["Modern", "Classic", "Wall-Mounted", "Bohoo", "Wooden", "Minimalist"];
  List priceTv = ["\$8000", "\$12000", "\$20000", "\$15000", "\$6000", "\$11000"];
  List ratingTv = ["180", "220", "300", "250", "140", "190"];

// Dining Sets
  List imagesDinning = ["assets/dinning1.jpg","assets/dinning3.jpg","assets/dinning4.jpg","assets/dinning6.jpg",];
  List productTitleDinning = ["Wooden", "Modern Dinning", "Classic Dinning", "Round Dinning"];
  List priceDinning = ["\$50000", "\$65000", "\$70000", "\$45000"];
  List ratingDinning = ["140", "180", "160", "130"];

// Living Room Sets
  List imagesLiving = ["assets/living2.jpg","assets/living3.jpg","assets/living5.jpg","assets/living7.jpg",];
  List productTitleLiving = ["Living Sofa", "Modern Living", "Classic Living", "Luxury Living"];
  List priceLiving = ["\$70000", "\$85000", "\$12000", "\$15000"];
  List ratingLiving = ["210", "190", "160", "240"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //search
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery
                          .sizeOf(context)
                          .width / 1.5,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        decoration: const InputDecoration(
                          hintText: "Find Your Product",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffb17457),
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: MediaQuery
                            .sizeOf(context)
                            .width / 6,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.bell_fill,
                            color: Color(0xffb17457),
                            size: 30,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,),
                //taps
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  tabs[index],
                                  style: const TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //new arrival
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("New Arrivals", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesNewArrival.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                               // width: 100,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child:Image.asset(imagesNewArrival[index]),
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
                                          child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                        ))
                                  ],
                                ),),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitleNewArrival[index],
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 5,),
                                  // const SizedBox(width: 120,
                                  //   child: Text(
                                  //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                                  //           "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                                  //           "when an unknown printer took a galley of type and scrambled it to "
                                  //           "make a type specimen book. ",
                                  //       overflow: TextOverflow.ellipsis,
                                  //       maxLines: 5,
                                  //       style: TextStyle(color: Colors.black54,
                                  //         fontSize: 16,)),
                                  // ),
                                  // const SizedBox(height: 7,),
                                  Row(
                                    children: [
                                      Text(priceNewArrival[index], style: const TextStyle(
                                          color: Color(0xffb17457),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber, size: 15,),
                                      const SizedBox(width: 4,),
                                      Text("(" + ratingNewArrival[index] + ")" , style: TextStyle(fontSize: 15 )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10,),
                Divider(thickness: 1, color: Colors.grey[300]),
                // Best seller
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Best Sellers", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(height: 10,),
                GridView.builder(
                    itemCount: imagesBestSeller.length,
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
                                    onTap: () {
                                      if (imagesBestSeller[index] == "assets/chairBlack.jpg") {
                                        Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => ProductScreen()));
                                      }
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child:Image.asset(imagesBestSeller[index]),
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
                                        child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                      ))
                                ],
                              ),),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(productTitleBestSeller[index],
                                  style: const TextStyle(color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),),
                                const SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text(priceBestSeller[index], style: const TextStyle(
                                        color: Color(0xffb17457),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),),
                                    const SizedBox(width: 4,),
                                    const Icon(
                                      CupertinoIcons.star_lefthalf_fill,
                                      color: Colors.amber, size: 15,),
                                    const SizedBox(width: 4,),
                                    Text("(" + ratingBestSeller[index] + ")" , style: TextStyle(fontSize: 15 )),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                Divider(thickness: 1, color: Colors.grey[300]),
                //Chairs
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Chairs", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesChair.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                                // width: 100,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:Image.asset(imagesChair[index]),
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
                                          child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                        ))
                                  ],
                                ),),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitleChair[index],
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(priceChair[index], style: const TextStyle(
                                          color: Color(0xffb17457),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber, size: 15,),
                                      const SizedBox(width: 4,),
                                      Text("(" + ratingChair[index] + ")" , style: TextStyle(fontSize: 15 )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10,),
                Divider(thickness: 1, color: Colors.grey[300]),
                // Living room
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Living Room", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesLiving.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                                // width: 100,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:Image.asset(imagesLiving[index]),
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
                                          child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                        ))
                                  ],
                                ),),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitleLiving[index],
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(priceLiving[index], style: const TextStyle(
                                          color: Color(0xffb17457),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber, size: 15,),
                                      const SizedBox(width: 4,),
                                      Text("(" + ratingLiving[index] + ")" , style: TextStyle(fontSize: 15 )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10,),
                Divider(thickness: 1, color: Colors.grey[300]),
                // dinning room
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Dinning Room", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesDinning.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                                // width: 100,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:Image.asset(imagesDinning[index]),
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
                                          child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                        ))
                                  ],
                                ),),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitleDinning[index],
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(priceDinning[index], style: const TextStyle(
                                          color: Color(0xffb17457),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber, size: 15,),
                                      const SizedBox(width: 4,),
                                      Text("(" + ratingDinning[index] + ")" , style: TextStyle(fontSize: 15 )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10,),
                Divider(thickness: 1, color: Colors.grey[300]),
                // tv unit
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("TV Units", style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesTv.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 120,
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 150,
                                // width: 100,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:Image.asset(imagesTv[index]),
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
                                          child: const Center(child: Icon(Icons.favorite_border, color: Colors.red, size: 15,),),
                                        ))
                                  ],
                                ),),
                              const SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitleTv[index],
                                    style: const TextStyle(color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(priceTv[index], style: const TextStyle(
                                          color: Color(0xffb17457),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber, size: 15,),
                                      const SizedBox(width: 4,),
                                      Text("(" + ratingTv[index] + ")" , style: TextStyle(fontSize: 15 )),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
