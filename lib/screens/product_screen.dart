import 'package:cozy/widgets/pop_up.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> images = [
    "assets/chairBagie.jpg",
    "assets/chairGray.jpg",
    "assets/chairBlack.jpg",
    "assets/chairYellow.jpg",
    "assets/chairWhite.jpg",
    "assets/chairSage.jpg",
    "assets/chairNavy.jpg"
  ];

  //[Colors.brown[200] ,
  // Colors.grey,
  // Colors.black,
  // Colors.yellow[500],
  // Colors.blue[500],
  // Colors.white70,
  // const Color(0xff5f7161)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                SizedBox(
                  height: 350,
                  width: MediaQuery.sizeOf(context).width,
                  child: FanCarouselImageSlider.sliderType1(
                    sliderDuration: Duration(milliseconds: 400),
                    autoPlayInterval: Duration(seconds: 2),
                    imagesLink: images,
                    isAssets: true,
                    autoPlay: true,
                    sliderHeight: 250,
                    showIndicator: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sitting Corner",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Two Chairs - Coffe Table",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ],
                        ),
                        Text(
                          "\$20000.00",
                          style: TextStyle(
                              color: Color(0xffb17457),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 0,
                      itemSize: 20,
                      //wrapAlignment: WrapAlignment.end,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                          color: Colors.black54, fontSize: 18),
                    ),

                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60, width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.cart_fill,
                              color: Color(0xffb17457),
                              size: 30,
                            ),
                          ),
                        ),
                        DetailsPopup(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
