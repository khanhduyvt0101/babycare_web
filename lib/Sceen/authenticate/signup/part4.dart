import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Part4_Signup extends StatefulWidget {
  const Part4_Signup({Key? key}) : super(key: key);

  @override
  _Part4_SignupState createState() => _Part4_SignupState();
}

class _Part4_SignupState extends State<Part4_Signup> {
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
                    margin: EdgeInsets.only(top: 40),
                    height: 500,
                    width: 420,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //padding: EdgeInsets.only(left: 50, right: 50),
                          margin: EdgeInsets.only(top: 30, bottom: 30),
                          child: Text(
                            'Well done!',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 34)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.only(bottom: 10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                          child: Center(
                              child: Text('Idling Animation here !',
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(fontSize: 20)))),
                        ),
                        Container(
                          width: 280,
                          child: Column(
                            children: [
                              Text(
                                  'We have processing your results Hang on tight!',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(fontSize: 22))),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Container()));
                          },
                          child: Container(
                            width: 280,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 80, 80, 80)),
                            child: Center(
                                child: Text('DONE',
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
                  ),
                ]))));
  }
}
