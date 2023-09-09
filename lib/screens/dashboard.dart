// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'package:dart_practice/screens/homePage.dart';
import 'package:dart_practice/screens/loginScreen.dart';
import 'package:dart_practice/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'animationpage.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  int curridx = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final pages = [
    MyHomePage(),
    AnimationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Animation", icon: Icon(Icons.animation))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.black,
          elevation: 10,
          onPressed: () async {
            var sharedPref = await SharedPreferences.getInstance();
            sharedPref.setBool(SplashScreenState.KEYLOGIN, false);

            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Icon(
            Icons.logout,
            size: 30,
            color: Colors.deepPurple,
          )),
      body: pages.elementAt(selectedIndex),
    );
  }
}
