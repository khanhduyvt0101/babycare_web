import 'package:babycare_web/Sceen/authenticate/signup/part1.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
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
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 45, bottom: 40),
                          child: Text(
                            'Signing Up',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 34)),
                          ),
                        ),
                        Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 226, 226, 226)),
                            child: TextField(
                              //obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                labelText: 'Username',
                                contentPadding: EdgeInsets.only(
                                    left: 30, bottom: 0, top: 0, right: 0),
                              ),
                            )),
                        Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 226, 226, 226)),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                labelText: 'Password',
                                contentPadding: EdgeInsets.only(
                                    left: 30, bottom: 0, top: 0, right: 0),
                              ),
                            )),
                        Container(
                            width: 300,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 226, 226, 226)),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                labelText: 'Re-Password',
                                contentPadding: EdgeInsets.only(
                                    left: 30, bottom: 0, top: 0, right: 0),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(bottom: 40, left: 70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                height: 20,
                                width: 20,
                                child: Checkbox(
                                    checkColor: Colors.white,
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    }),
                              ),
                              Text('Remember',
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    //fontSize: 34)),
                                  )))
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Part1_Signup()));
                          },
                          child: Container(
                            width: 300,
                            height: 50,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 80, 80, 80)),
                            child: Center(
                                child: Text(
                              'SIGN UP',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
