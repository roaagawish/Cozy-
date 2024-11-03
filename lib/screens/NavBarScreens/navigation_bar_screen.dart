import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cozy/screens/NavBarScreens/cart_screen.dart';
import 'package:cozy/screens/NavBarScreens/favourate_screen.dart';
import 'package:cozy/screens/NavBarScreens/home_screen.dart';
import 'package:cozy/screens/NavBarScreens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {

  List<Widget> pages = [
    const HomeScreen(),
    CartScreen(),
    FavourateScreen(),
    const ProfileScreen()
  ];

  late int pageindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf7f0),
      body: IndexedStack(
        index: pageindex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffb17457),
        onPressed: () {  },
        child: Icon(CupertinoIcons.qrcode_viewfinder,color: Colors.black54,size: 30,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        backgroundColor:  Color(0xfffaf7f0),
        activeColor: const Color(0xffb17457),
        activeIndex: pageindex,
        inactiveColor: Colors.black54,
        iconSize: 30,
        elevation: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        onTap: (index) {
          setState( () {
            pageindex = index;
          } );
        },
      ),
    );

  }
}
