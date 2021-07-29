import 'package:babycare_web/Sceen/authenticate/signup/signup_page.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Widget _buildTextfield(String text) {
    return Container(
        width: 300 * 2.h,
        height: 65 * 2.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 226, 226, 226)),
        child: TextField(
          //readOnly: true,
          //obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            labelText: text,
            contentPadding:
                EdgeInsets.only(left: 30, bottom: 0, top: 0, right: 0),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 155, 242),
      body: SingleChildScrollView(
          child: Container(
              height: 1024 * 2.h,
              width: ScreenUtil().screenWidth,
              child: Column(
                children: [
                  Category(
                    isActive: 'login',
                    isLogin: false,
                  ),
                  SizedBox(height: 100.h),
                  Container(
                    height: 560 * 2.h,
                    width: 480 * 2.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTextfield('Username'),
                        SizedBox(
                          height: 15 * 2.h,
                        ),
                        _buildTextfield('Password'),
                        SizedBox(
                          height: 45 * 2.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Container(
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 252, 148, 149)),
                            child: Center(
                                child: Text(
                              'LOGIN',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 20 * 2.sp)),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 20 * 2.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 40 * 2.h,
                        ),
                        BuildContainerImg(
                          height: 50 * 2.h,
                          width: 150 * 2.h,
                          url: "images/loginpage.png",
                          radius: 0,
                        ),
                        SizedBox(
                          height: 45 * 2.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          child: Container(
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 218, 143)),
                            child: Center(
                                child: Text(
                              'Create New Account',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 20 * 2.sp)),
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
