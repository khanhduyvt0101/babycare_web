import 'package:babycare_web/Sceen/authenticate/signup/part4.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      width: 220 * 2.h,
      height: 48 * 2.h,
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
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20 * 2.sp,
                      fontWeight: FontWeight.w400)),
              //textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10 * 2.h,
                  width: 100 * 2.h,
                  decoration:
                      BoxDecoration(color: Colors.black, border: Border.all()),
                ),
                Container(
                  height: 10 * 2.h,
                  width: 100 * 2.h,
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
                height: 1024 * 2.h,
                width: ScreenUtil().screenWidth,
                child: Column(children: [
                  Category(),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    height: 760 * 2.h,
                    width: 520 * 2.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 400 * 2.h,
                          child: Column(
                            children: [
                              Text(
                                'Can you remember what your baby ate last week?',
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: 24 * 2.sp)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          margin: EdgeInsets.only(bottom: 10),
                          height: 600 * 2.h,
                          width: 331 * 2.h,
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
                                    width: 40 * 2.h,
                                    height: 460 * 2.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                '/images/signup/part3_signup.png'))),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 8.h, left: 20.w),
                                    child: Column(
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        _buildContainer(
                                            'Porridge: 0 b', 8 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 8 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 8 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 12 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 11 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 8 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 10 * 2.h),
                                        _buildContainer(
                                            'Porridge: 0 b', 8 * 2.h),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 140 * 2.h,
                                    height: 65 * 2.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Center(
                                        child: Text('Skip',
                                            style: GoogleFonts.dosis(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black,
                                                  fontSize: 20 * 2.sp),
                                            ))),
                                  ),
                                  SizedBox(
                                    width: 20.w,
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
                                      width: 140 * 2.h,
                                      height: 65 * 2.h,
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
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                    fontSize: 20 * 2.sp),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                height: 15 * 2.h,
                                width: 15 * 2.h,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromARGB(255, 80, 80, 80)),
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
