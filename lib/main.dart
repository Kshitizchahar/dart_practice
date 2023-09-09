// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_final_fields, prefer_const_literals_to_create_immutables, avoid_print, unused_field

import 'package:dart_practice/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
            headlineLarge: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.w500,
                color: Colors.blue),
            displaySmall: GoogleFonts.poppins(),
            // titleLarge:
          )),
      home: SplashScreen(),
    );
  }
}
