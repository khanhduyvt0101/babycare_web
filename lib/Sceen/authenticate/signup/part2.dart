import 'package:babycare_web/Sceen/authenticate/signup/part3.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Part2_Signup extends StatefulWidget {
  const Part2_Signup({Key? key}) : super(key: key);

  @override
  _Part2_SignupState createState() => _Part2_SignupState();
}

class _Part2_SignupState extends State<Part2_Signup> {
  Widget _buildContainer(String text, String url) {
    return Container(
      width: 300 * 2.h,
      height: 48 * 2.h,
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(35)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5.w),
            height: 40 * 2.h,
            width: 40 * 2.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(image: AssetImage(url))),
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Text(
                    text,
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 20 * 2.sp)),
                    //textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10 * 2.h,
                        width: 100 * 2.h,
                        decoration: BoxDecoration(
                            color: Colors.black, border: Border.all()),
                      ),
                      Container(
                        height: 10 * 2.h,
                        width: 100 * 2.h,
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
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
                        Container(
                          width: 372 * 2.h,
                          child: Text(
                            'Let us know more about your kid',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 40 * 2.sp)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: 300 * 2.h,
                          width: 373 * 2.h,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 196, 196, 196),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 200 * 2.h,
                                  height: 48 * 2.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 37 * 2.h,
                                        width: 37 * 2.h,
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
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 20 * 2.sp)),
                                        //textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                              _buildContainer('Height: 100 cm',
                                  '/images/signup/height_part2_signup.png'),
                              _buildContainer('Weight: 400 g',
                                  '/images/signup/weight_part2_signup.png'),
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
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 80, 80, 80)),
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
                        Text('2/3'),
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
                                    color: Color.fromARGB(255, 80, 80, 80)),
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
                ]))));
  }
}
