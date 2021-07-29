import 'package:babycare_web/Sceen/authenticate/signup/part2.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      backgroundColor: Color.fromARGB(255, 167, 155, 242),
      body: SingleChildScrollView(
          child: Container(
              height: 1024 * 2.h,
              width: ScreenUtil().screenWidth,
              child: Column(
                children: [
                  Category(
                    isActive: 'signup',
                    isLogin: false,
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  Container(
                    height: 660 * 2.h,
                    width: 520 * 2.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60.h,
                        ),
                        Container(
                          child: Text(
                            'Your first time ?',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 40 * 2.sp)),
                          ),
                        ),
                        Container(
                          height: 228 * 2.h,
                          width: 373 * 2.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 145, 242, 233),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40.h,
                              ),
                              Text(
                                'What gender is the kid',
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: 24 * 2.sp)),
                              ),
                              SizedBox(
                                height: 80.h,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        manclick();
                                      },
                                      child: Container(
                                        height: 100 * 2.h,
                                        width: 100 * 2.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: man
                                                ? Colors.amber
                                                : Color.fromARGB(
                                                    255, 5, 199, 242)),
                                        child: Center(
                                          child: BuildContainerImg(
                                            height: 80 * 2.h,
                                            width: 80 * 2.h,
                                            url:
                                                'images/signup/man_part1_signup.png',
                                            radius: 100,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        womanclick();
                                      },
                                      child: Container(
                                        height: 100 * 2.h,
                                        width: 100 * 2.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: woman
                                                ? Colors.amber
                                                : Color.fromARGB(
                                                    255, 242, 179, 225)),
                                        child: Center(
                                          child: BuildContainerImg(
                                            height: 80 * 2.h,
                                            width: 80 * 2.h,
                                            url:
                                                'images/signup/woman_part1_signup.png',
                                            radius: 100,
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
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 252, 148, 149)),
                            child: Center(
                                child: Text('Next',
                                    style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 20 * 2.sp),
                                    ))),
                          ),
                        ),
                        Text('1/3'),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 15 * 2.h,
                                width: 15 * 2.h,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 252, 148, 149)),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                height: 15 * 2.h,
                                width: 15 * 2.h,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                height: 15 * 2.h,
                                width: 15 * 2.h,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
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
