import 'package:babycare_web/Sceen/authenticate/signup/part2.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Part1_Signup extends StatefulWidget {
  const Part1_Signup({Key? key}) : super(key: key);

  @override
  _Part1_SignupState createState() => _Part1_SignupState();
}

class _Part1_SignupState extends State<Part1_Signup> {
  bool man = false;
  bool woman = false;
  manclick() {
    setState(() {
      man = true;
      woman = false;
    });
  }

  womanclick() {
    setState(() {
      man = false;
      woman = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Category(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 530,
                    width: 420,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 45, bottom: 80),
                          child: Text(
                            'Your first time ?',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 34)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 196, 196, 196),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                'What gender is the kid',
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 22)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        manclick();
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: man
                                                ? Colors.amber
                                                : Color.fromARGB(
                                                    255, 226, 226, 226)),
                                        child: Center(
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'images/signup/man_part1_signup.png'),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        womanclick();
                                      },
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: woman
                                                ? Colors.amber
                                                : Color.fromARGB(
                                                    255, 226, 226, 226)),
                                        child: Center(
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'images/signup/woman_part1_signup.png'),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Part2_Signup()));
                          },
                          child: Container(
                            width: 260,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 80, 80, 80)),
                            child: Center(
                                child: Text('Next',
                                    style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ))),
                          ),
                        ),
                        Text('1/3'),
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 80, 80, 80)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
