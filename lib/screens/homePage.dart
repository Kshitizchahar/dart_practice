// ignore_for_file: file_names, avoid_print, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:dart_practice/screens/userinfo.dart';
import 'package:dart_practice/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List name = ["A", "B", "C"];
  List arrData = [
    {"name": "Yash", "age": "5", "ocupation": "Nalla"},
    {"name": "Kshitiz", "age": "22", "ocupation": "Engineer"},
    {"name": "Abhishek", "age": "26", "ocupation": "X-SI"}
    // name is a key and age value of the object
  ];

  var emailtextcontroller = TextEditingController();
  var phonetextcontroller = TextEditingController();
  var passwordtextcontroller = TextEditingController();

  var _passwordVisible = true;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decreaseCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  callback() {
    print("Callback executed");
    // Container(
    //   color: Colors.red,
    // );
  }

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    // ignore: unused_local_variable, non_constant_identifier_names
    DateTime? Date;
    var arrColors = [
      Colors.red,
      Colors.amber,
      Colors.black,
      Colors.blue,
      Colors.blueGrey,
      Colors.brown,
      Colors.cyan
    ];

    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        title: Text(
          "Flutter Practice",
          style: GoogleFonts.poppins(
              color: Colors.deepPurple,
              fontSize: MediaQuery.of(context).size.height * 0.03,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hii", style: font16(textcolor: Colors.black)
                  // Theme.of(context)
                  //     .textTheme
                  //     .headlineLarge!
                  //     .copyWith(fontSize: 40)
                  ),
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                height: MediaQuery.of(context).size.width / 3,
                color: Colors.cyan,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    border: Border.all(width: 5, color: Colors.blueAccent)),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                height: MediaQuery.of(context).size.width / 3,
              ),
              Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          offset: Offset(1, 4),
                          spreadRadius: 20)
                    ]),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                height: MediaQuery.of(context).size.width / 3,
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                height: MediaQuery.of(context).size.width / 3,
                color: Colors.orangeAccent,
              ),
              InkWell(
                onTap: () {
                  print("Row is pressed");
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      name[index],
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  },
                  itemExtent: 50,
                  itemCount: name.length,
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.amberAccent,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      name[index],
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  },
                  itemCount: name.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    Container(
                      color: Colors.blueGrey,
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.amber,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blueAccent,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.amber,
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/boy.jpg"),
                      ),
                      // leading: CircleAvatar(child: Icon(Icons.people)),
                      title: Text(
                        "Name ${name[index]}",
                        style: font16(textcolor: Colors.black),
                      ),
                      subtitle: Text("Details"),
                      trailing: CircleAvatar(
                        child: Icon(Icons.add),
                      ),
                    );
                  },
                  itemCount: name.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                    );
                  },
                ),
              ),
              Card(
                shape: Border.all(style: BorderStyle.solid, width: 3),
                elevation: 10,
                shadowColor: Colors.blueAccent,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Card Widget",
                        style: font16(textcolor: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/images/boy.jpg"),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: ListView(
                  children: arrData
                      .map(
                        (value) => Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            tileColor: Colors.pink,
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/boy.jpg"),
                            ),
                            title: Text(
                              value["name"].toString(),
                              style: font16(textcolor: Colors.black),
                            ),
                            subtitle: Text(
                              value["ocupation"].toString(),
                              style: GoogleFonts.poppins(
                                  color: Colors.amber,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            trailing: Text(
                              "Age- ${value["age"].toString()}",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailtextcontroller,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: font16(
                      textcolor: Colors.purple,
                    ),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(width: 2, color: Colors.green))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: phonetextcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone-no",
                  prefixIcon: Icon(Icons.phone),
                  labelStyle: font16(
                    textcolor: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(width: 2, color: Colors.green)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: TextField(
                  controller: passwordtextcontroller,
                  obscureText: _passwordVisible,
                  obscuringCharacter: "*",
                  style: font16(textcolor: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        )),
                    labelStyle: font16(
                      textcolor: Colors.purple,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(width: 2, color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue),
                onPressed: () {
                  String email = emailtextcontroller.text.toString();
                  String phoneno = phonetextcontroller.text;
                  // String password = passwordtextcontroller.text;

                  print("E-mail: $email");
                  print("Phone-no: $phoneno");
                  print("Password: ${passwordtextcontroller.text.toString()}");

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserInfo(
                          email: emailtextcontroller.text.toString(),
                          phone: phonetextcontroller.text.toString(),
                          password: passwordtextcontroller.text.toString(),
                        ),
                      ));
                },
                child: Text(
                  "Fetch the data",
                  style: font16(textcolor: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date - Format: ${DateFormat('yMMMd').format(time)}",
                      style: font16(),
                    ),
                    Text(
                      "Quarter: ${DateFormat('QQQQ').format(time)}",
                      style: font16(),
                    ),
                    Text(
                      "Date - Time: $time",
                      style: font16(),
                    ),
                    Text(
                      "Year: ${time.year}",
                      style: font16(),
                    ),
                    Text(
                      "Month: ${time.month}",
                      style: font16(),
                    ),
                    Text(
                      "Weekday: ${time.weekday}",
                      style: font16(),
                    ),
                    Text(
                      "day: ${time.day}",
                      style: font16(),
                    ),
                    Text(
                      "Hour: ${time.hour}",
                      style: font16(),
                    ),
                    Text(
                      "minute: ${time.minute}",
                      style: font16(),
                    ),
                    Text(
                      "Second: ${time.second}",
                      style: font16(),
                    ),
                    Text(
                      "Time-Zone: ${time.timeZoneName}",
                      style: font16(),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text(
                  "Update Time",
                  style: font16(textcolor: Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? datePicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2030),
                  );

                  if (datePicker != null) {
                    print(
                        "Date Selected: ${datePicker.day}/${datePicker.month}/${datePicker.year}");
                  }
                },
                child: Text(
                  "Show Date",
                  style: font16(textcolor: Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicker = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());

                  if (timePicker != null) {
                    print(
                        "Time Selected: ${timePicker.hour}: ${timePicker.minute}");
                  }
                },
                child: Text(
                  "Show Time",
                  style: font16(textcolor: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Container(color: arrColors[0]),
                    Container(color: arrColors[1]),
                    Container(color: arrColors[2]),
                    Container(color: arrColors[3]),
                    Container(color: arrColors[4]),
                    Container(color: arrColors[5]),
                    Container(color: arrColors[6]),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: GridView.extent(
                  maxCrossAxisExtent: 100,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Container(color: arrColors[0]),
                    Container(color: arrColors[1]),
                    Container(color: arrColors[2]),
                    Container(color: arrColors[3]),
                    Container(color: arrColors[4]),
                    Container(color: arrColors[5]),
                    Container(color: arrColors[6]),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 50,
                      maxCrossAxisExtent: 150),
                  itemBuilder: (context, index) {
                    return Container(
                      color: arrColors[index],
                    );
                  },
                  itemCount: arrColors.length,
                ),
              ),
              ElevatedButton(
                onPressed: callback,
                child: Text(
                  "Callback Function",
                  style: font16(textcolor: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.amber,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.red,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.06,
                      left: MediaQuery.of(context).size.height * 0.06,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.12,
                      left: MediaQuery.of(context).size.height * 0.13,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: MediaQuery.of(context).size.width / 3.5,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.04,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.deepPurple,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Container(height: 100, width: 50, color: arrColors[0]),
                    Container(height: 100, width: 100, color: arrColors[1]),
                    Container(height: 100, width: 100, color: arrColors[2]),
                    Container(height: 100, width: 100, color: arrColors[3]),
                    Container(height: 100, width: 100, color: arrColors[4]),
                    Container(height: 100, width: 100, color: arrColors[5]),
                    Container(height: 100, width: 100, color: arrColors[6]),
                    Container(height: 100, width: 50, color: arrColors[1]),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(fontSize: 24, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "Hello, I am ",
                    ),
                    TextSpan(
                      text: "Kshitiz Chahar",
                      style: GoogleFonts.italiana(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RangeSlider(
                  values: values,
                  labels: labels,
                  divisions: 10,
                  min: 0,
                  max: 100,
                  onChanged: (newvalue) {
                    setState(() {
                      values = newvalue;
                      print(
                          "${values.start.toString()},${values.end.toString()}");
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
