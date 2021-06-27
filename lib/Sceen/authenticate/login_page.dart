import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
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
                          height: 50,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 80, 80, 80)),
                          child: Center(
                              child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/loginpage.png"),
                          )),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 226, 226, 226)),
                          child: Center(
                              child: Text(
                            'Create New Account',
                            style: TextStyle(color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
