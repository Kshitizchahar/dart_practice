// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Hero Animation',
          style: GoogleFonts.poppins(
            color: Colors.deepPurple,
            fontSize: MediaQuery.of(context).size.height * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Hero(
            tag: "heroanimation",
            child: Image.asset(
                fit: BoxFit.cover, "assets/images/heroanimation.jpeg"),
          )),
    );
  }
}
