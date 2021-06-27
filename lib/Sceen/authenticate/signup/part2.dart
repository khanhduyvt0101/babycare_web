import 'package:babycare_web/Sceen/authenticate/signup/part3.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Part2_Signup extends StatefulWidget {
  const Part2_Signup({Key? key}) : super(key: key);

  @override
  _Part2_SignupState createState() => _Part2_SignupState();
}

class _Part2_SignupState extends State<Part2_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
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
                          padding: EdgeInsets.only(left: 50, right: 50),
                          margin: EdgeInsets.only(top: 20, bottom: 30),
                          child: Text(
                            'Let us know more about your kid',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 34)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          height: 270,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 196, 196, 196),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    '/images/signup/date_part2_signup.png'))),
                                      ),
                                      Text(
                                        'dd/MM/yy',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25)),
                                        //textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 15, bottom: 15),
                                width: 250,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '/images/signup/height_part2_signup.png'))),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Height: 100 cm',
                                              style: GoogleFonts.dosis(
                                                  textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18)),
                                              //textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 10,
                                                  width: 75,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      border: Border.all()),
                                                ),
                                                Container(
                                                  height: 10,
                                                  width: 75,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all()),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '/images/signup/weight_part2_signup.png'))),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Weight: 400 g',
                                              style: GoogleFonts.dosis(
                                                  textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18)),
                                              //textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 10,
                                                  width: 75,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      border: Border.all()),
                                                ),
                                                Container(
                                                  height: 10,
                                                  width: 75,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all()),
                                                ),
                                              ],
                                            )
                                          ],
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
                                    builder: (context) => Part3_Signup()));
                          },
                          child: Container(
                            width: 260,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
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
                        Text('2/3'),
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]))));
  }
}
