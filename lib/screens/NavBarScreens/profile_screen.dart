import 'package:cozy/screens/NavBarScreens/favourate_screen.dart';
import 'package:cozy/screens/introScreens/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final String userName = 'Roaa Gawish';
  final String email = 'roaa.gawish@example.com';
  final String profilePicUrl = 'https://via.placeholder.com/150';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
       // leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Color(0xfffaf7f0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              alignment: Alignment.center,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profilePicUrl),
                  ),
                  SizedBox(height: 15),
                  Text(
                    userName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    email,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            // Settings and options
            ListTile(
              leading: Icon(Icons.settings , color: Color(0xffb17457),),
              title: Text('Account Settings'),
              onTap: () {
                // Navigate to settings page
              },
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            ListTile(
              leading: Icon(Icons.shopping_bag , color: Color(0xffb17457),),
              title: Text('Order History'),
              onTap: () {
                // Navigate to order history page
              },
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            ListTile(
              leading: Icon(Icons.favorite , color: Color(0xffb17457),),
              title: const Text('Favourate'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavourateScreen()));
              },
            ),
            Divider(thickness: 1, color: Colors.grey[300]),

            ListTile(
              leading: Icon(Icons.logout, color: Color(0xffb17457),),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
