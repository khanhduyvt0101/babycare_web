import 'package:babycare_web/Sceen/account.dart';
import 'package:babycare_web/Sceen/authenticate/login_page.dart';
import 'package:babycare_web/Sceen/authenticate/signup/signup_page.dart';
import 'package:babycare_web/Sceen/carriage/carriage.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:babycare_web/Sceen/vaccination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  final String? isActive;
  final bool? isLogin;

  const Category({Key? key, this.isActive, this.isLogin}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool carriage = false;
  bool vaccin = false;
  bool account = false;
  bool login = false;
  bool signup = false;

  void sethome() {
    setState(() {
      carriage = false;
      vaccin = false;
      account = false;
      login = false;
      signup = false;
    });
  }

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
        color: Colors.white,
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
              sethome();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20.w),
              child: Text(
                'Baby Care',
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 189, 136, 242))),
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
            child: carriage || widget.isActive! == 'carriage'
                ? Container(
                    height: 80.h,
                    width: 160.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 189, 136, 242)),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VaccinationPage()));
            },
            child: vaccin || widget.isActive! == 'vaccination'
                ? Container(
                    height: 80.h,
                    width: 180.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 189, 136, 242)),
                    child: Center(
                      child: Text(
                        'Vaccination',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontSize: 40.sp, fontWeight: FontWeight.w500)),
                      ),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
            child: account || widget.isActive! == 'account'
                ? Container(
                    height: 80.h,
                    width: 160.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 189, 136, 242)),
                    child: Center(
                      child: Text(
                        'Account',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontSize: 40.sp, fontWeight: FontWeight.w500)),
                      ),
                    ))
                : Container(
                    child: Center(
                    child: Text(
                      'Account',
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontSize: 40.sp, fontWeight: FontWeight.w500)),
                    ),
                  )),
          ),
          SizedBox(
            width: 45.w,
          ),
          widget.isLogin!
              ? Container(
                  child: Text(
                    'Logout',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 189, 136, 242))),
                  ),
                )
              : Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setlogin();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: login || widget.isActive! == 'login'
                          ? Container(
                              height: 80.h,
                              width: 160.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 189, 136, 242)),
                              child: Center(
                                child: Text('Login',
                                    style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                              ))
                          : Container(
                              child: Text(
                                'Login',
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                        fontSize: 40.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 189, 136, 242))),
                              ),
                            ),
                    ),
                    SizedBox(
                      width: 45.w,
                    ),
                    InkWell(
                      onTap: () {
                        setsignup();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: signup || widget.isActive! == 'signup'
                          ? Container(
                              height: 80.h,
                              width: 160.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 189, 136, 242)),
                              child: Center(
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ))
                          : Container(
                              child: Text(
                              'Sign Up',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 189, 136, 242))),
                            )),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
