// ignore_for_file: prefer_const_constructors, file_names, use_build_context_synchronously

import 'package:dart_practice/screens/dashboard.dart';
import 'package:dart_practice/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        title: Text(
          "Login ",
          style: GoogleFonts.poppins(
              color: Colors.deepPurple,
              fontSize: MediaQuery.of(context).size.height * 0.03,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.supervised_user_circle,
                color: Colors.deepPurple,
                size: 150,
              ),
              TextField(
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    labelStyle:
                        GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelText: "Login"),
              ),
              TextField(
                obscureText: _passwordVisible,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.deepPurple,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.deepPurple,
                      )),
                  labelText: "Password",
                  labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 2),
                      elevation: 10,
                      textStyle:
                          GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  onPressed: ()async {
                    // If loggedin Succesfully (means cred correct)

                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()));
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
