import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 10,
      title: Text(
        title,
        style: GoogleFonts.poppins(
            color: Colors.deepPurple,
            fontSize: MediaQuery.of(context).size.height * 0.03,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Size get preferredSize => AppBar().preferredSize;
}
