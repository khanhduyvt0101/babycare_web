import 'package:babycare_web/Sceen/authenticate/login_page.dart';
import 'package:babycare_web/Sceen/authenticate/signup/signup_page.dart';
import 'package:babycare_web/Sceen/carriage/carriage.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool carriage = false;
  bool vaccin = false;
  bool account = false;
  bool login = false;
  bool signup = false;
  void setcarriage() {
    setState(() {
      carriage = true;
      vaccin = false;
      account = false;
      login = false;
      signup = false;
    });
  }

  void setvaccin() {
    setState(() {
      carriage = false;
      vaccin = true;
      account = false;
      login = false;
      signup = false;
    });
  }

  void setaccount() {
    setState(() {
      carriage = false;
      vaccin = false;
      account = true;
      login = false;
      signup = false;
    });
  }

  void setlogin() {
    setState(() {
      carriage = false;
      vaccin = false;
      account = false;
      login = true;
      signup = false;
    });
  }

  void setsignup() {
    setState(() {
      carriage = false;
      vaccin = false;
      account = false;
      login = false;
      signup = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.w),
      width: ScreenUtil().screenWidth,
      height: 132.h,
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border(
          bottom: BorderSide(
            //                   <--- left side
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text(
                'Baby Care',
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 60.sp, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setcarriage();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CarriagePage()));
            },
            child: carriage
                ? Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown[100]),
                    child: Center(
                      child: Text(
                        'Carriage',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontSize: 40.sp, fontWeight: FontWeight.w500)),
                      ),
                    ))
                : Container(
                    child: Text(
                    'Carriage',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.w500)),
                  )),
          ),
          SizedBox(
            width: 45.w,
          ),
          InkWell(
            onTap: () {
              setvaccin();
            },
            child: vaccin
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown[100]),
                    child: Text(
                      'Vaccination',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontSize: 40.sp, fontWeight: FontWeight.w500)),
                    ))
                : Container(
                    child: Text(
                    'Vaccination',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.w500)),
                  )),
          ),
          SizedBox(
            width: 45.w,
          ),
          InkWell(
            onTap: () {
              setaccount();
            },
            child: account
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown[100]),
                    child: Text(
                      'Account',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontSize: 40.sp, fontWeight: FontWeight.w500)),
                    ))
                : Container(
                    child: Text(
                    'Account',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.w500)),
                  )),
          ),
          SizedBox(
            width: 45.w,
          ),
          InkWell(
            onTap: () {
              setlogin();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: login
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown[100]),
                    child: Text(
                      'Login',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontSize: 40.sp, fontWeight: FontWeight.bold)),
                    ))
                : Container(
                    child: Text(
                    'Login',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.bold)),
                  )),
          ),
          SizedBox(
            width: 45.w,
          ),
          InkWell(
            onTap: () {
              setsignup();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupPage()));
            },
            child: signup
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown[100]),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontSize: 40.sp, fontWeight: FontWeight.bold)),
                    ))
                : Container(
                    child: Text(
                    'Sign Up',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp, fontWeight: FontWeight.bold)),
                  )),
          ),
        ],
      ),
    );
  }
}
