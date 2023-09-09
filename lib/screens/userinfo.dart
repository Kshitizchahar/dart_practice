// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:dart_practice/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class UserInfo extends StatefulWidget {
  var email;
  var phone;
  var password;
  UserInfo(
      {super.key,
      required this.email,
      required this.phone,
      required this.password});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "User Info",
          style: GoogleFonts.poppins(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email",
                            style: font16(textcolor: Colors.black),
                          ),
                          Text(": ", style: font16(textcolor: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Phone no.",
                              style: font16(textcolor: Colors.black)),
                          Text(": ", style: font16(textcolor: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Password",
                              style: font16(textcolor: Colors.black)),
                          Text(": ", style: font16(textcolor: Colors.black))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          overflow: TextOverflow.ellipsis,
                          "${widget.email}",
                          style: font16(textcolor: Colors.black)),
                      Text(widget.phone,
                          style: font16(textcolor: Colors.black)),
                      Text(widget.password,
                          style: font16(textcolor: Colors.black))
                    ],
                  ),
                )
              ],
            )
          ])),
    );
  }
}
