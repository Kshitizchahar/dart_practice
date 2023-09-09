// ignore_for_file: dead_code, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dart_practice/screens/heroanimation.dart';
import 'package:dart_practice/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with TickerProviderStateMixin {
  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;
  bool isopacity = true;
  bool isfade = true;
  var myDeco = BoxDecoration(color: Colors.amber);
  var myopacity = 1.0;

  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  late Animation animation;
  late Animation coloranimation;
  late AnimationController animationController;
  late AnimationController _rippleanimationController;
  late Animation _rippleanimation;

  var rippleradius = [10.0, 50.0, 100.0, 150.0, 200.0];

  @override
  void initState() {
    super.initState();
    _rippleanimationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4), lowerBound: 0.2);
    _rippleanimation =
        Tween(begin: 0.0, end: 1.0).animate(_rippleanimationController);

    _rippleanimationController.addListener(() {
      setState(() {});
    });

    // Tween ANimation
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    animation = Tween(begin: 100.0, end: 200.0).animate(animationController);
    coloranimation = ColorTween(begin: Colors.amber, end: Colors.blue)
        .animate(animationController);

    animationController.addListener(() {
      // print(animation.value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        title: Text(
          'Foo Animation',
          style: GoogleFonts.poppins(
            color: Colors.deepPurple,
            fontSize: MediaQuery.of(context).size.height * 0.03,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Stack(alignment: Alignment.center, children: [
                      buildMyContainer(rippleradius[0]),
                      buildMyContainer(rippleradius[1]),
                      buildMyContainer(rippleradius[2]),
                      buildMyContainer(rippleradius[3]),
                      buildMyContainer(rippleradius[4]),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 30,
                      )
                    ]),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, side: BorderSide(width: 2)),
                    onPressed: () {
                      setState(() {
                        _rippleanimationController.forward();
                      });
                    },
                    child: Text(
                      "Ripple ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: animation.value,
                    width: animation.value,
                    color: coloranimation.value,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, side: BorderSide(width: 2)),
                    onPressed: () {
                      setState(() {
                        animationController.forward();
                      });
                    },
                    child: Text(
                      "Tween",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    height: _height,
                    width: _width,
                    decoration: myDeco,
                    curve: Curves.bounceInOut,
                    duration: Duration(seconds: 2),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, side: BorderSide(width: 2)),
                    onPressed: () {
                      setState(() {
                        if (flag) {
                          _height = 200.0;
                          _width = 100.0;

                          myDeco = BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          );
                          flag = false;
                        } else {
                          _height = 100.0;
                          _width = 200.0;

                          myDeco = BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(40));
                          flag = true;
                        }
                      });
                    },
                    child: Text(
                      "Animation",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    opacity: myopacity,
                    curve: Curves.easeInBack,
                    duration: Duration(seconds: 2),
                    child: Container(
                      color: Colors.pink,
                      height: 100,
                      width: 200,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, side: BorderSide(width: 2)),
                    onPressed: () {
                      setState(() {
                        if (isopacity) {
                          myopacity = 0.3;
                          isopacity = false;
                        } else {
                          myopacity = 1;
                          isopacity = true;
                        }
                      });
                    },
                    child: Text("Opacity",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedCrossFade(
                    firstChild: Container(
                      height: 200,
                      width: 200,
                      color: Colors.deepOrange,
                    ),
                    secondChild: Image.asset(
                      "assets/images/boy.jpg",
                      height: 200,
                      width: 200,
                    ),
                    crossFadeState: isfade
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(seconds: 4),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10, side: BorderSide(width: 2)),
                    onPressed: () {
                      setState(() {
                        if (isfade) {
                          isfade = false;
                        } else {
                          isfade = true;
                        }
                      });
                    },
                    child: Text("Cross Fade",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HeroAnimation()));
                    },
                    child: Hero(
                        tag: "heroanimation",
                        child: Image.asset(
                          "assets/images/heroanimation.jpeg",
                          width: 200,
                        )),
                  ),
                  Text(
                    "Hero Animation",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListWheelScrollView(
                    itemExtent: 150,
                    children: arr
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(5, 5),
                                            blurStyle: BlurStyle.outer,
                                            blurRadius: 15),
                                      ],
                                      color: Colors.blue,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: double.infinity,
                                  child: Center(
                                      child: Text(
                                    '$value',
                                    style: font16(textcolor: Colors.white),
                                  ))),
                            ))
                        .toList()),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/heroanimation.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      height: radius * _rippleanimation.value,
      width: radius * _rippleanimation.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(1.0 - _rippleanimation.value)),
    );
  }
}
