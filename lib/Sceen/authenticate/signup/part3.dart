import 'package:babycare_web/Sceen/authenticate/signup/part4.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Part3_Signup extends StatefulWidget {
  const Part3_Signup({Key? key}) : super(key: key);

  @override
  _Part3_SignupState createState() => _Part3_SignupState();
}

class _Part3_SignupState extends State<Part3_Signup> {
  Widget _buildContainer(String text, double distancebottom) {
    return Container(
      margin: EdgeInsets.only(bottom: distancebottom),
      width: 150,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(35),
          color: Colors.white),
      child: Center(
        child: Column(
          children: [
            Text(
              text,
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(color: Colors.black, fontSize: 12)),
              //textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 7,
                  width: 55,
                  decoration:
                      BoxDecoration(color: Colors.black, border: Border.all()),
                ),
                Container(
                  height: 7,
                  width: 55,
                  decoration:
                      BoxDecoration(color: Colors.white, border: Border.all()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
                    margin: EdgeInsets.only(top: 10),
                    height: 560,
                    width: 420,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //padding: EdgeInsets.only(left: 50, right: 50),
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          child: Text(
                            'Can you remember what your baby ate last week?',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 25)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.only(bottom: 10),
                          height: 420,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 196, 196, 196),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(left: 40),
                                    width: 40,
                                    height: 320,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                '/images/signup/part3_signup.png'))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8, left: 20),
                                    child: Column(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        _buildContainer('Porridge: 0 b', 8),
                                        _buildContainer('Porridge: 0 b', 8),
                                        _buildContainer('Porridge: 0 b', 8),
                                        _buildContainer('Porridge: 0 b', 12),
                                        _buildContainer('Porridge: 0 b', 11),
                                        _buildContainer('Porridge: 0 b', 8),
                                        _buildContainer('Porridge: 0 b', 10),
                                        _buildContainer('Porridge: 0 b', 8),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 130,
                                    height: 50,
                                    margin: EdgeInsets.fromLTRB(0, 20, 10, 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Center(
                                        child: Text('Skip',
                                            style: GoogleFonts.dosis(
                                              textStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ))),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Part4_Signup()));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 50,
                                      margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              Color.fromARGB(255, 80, 80, 80)),
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
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text('3/3'),
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
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]))));
  }
}
