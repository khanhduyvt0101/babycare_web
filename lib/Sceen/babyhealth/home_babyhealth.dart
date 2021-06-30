import 'package:babycare_web/Sceen/babyhealth/updateBMI.dart';
import 'package:babycare_web/Sceen/babyhealth/updateNI.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';

class Home_Babyhealth extends StatefulWidget {
  const Home_Babyhealth({Key? key}) : super(key: key);

  @override
  _Home_BabyhealthState createState() => _Home_BabyhealthState();
}

class _Home_BabyhealthState extends State<Home_Babyhealth> {
  Widget _buildStatus() {
    return Container(
      width: ScreenUtil().screenWidth / 2.5,
      height: 900.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Name',
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 60.sp)),
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Baby's age:",
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 40.sp)),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                  child: Text(
                    '15',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 36.sp)),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "month",
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 40.sp)),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Status",
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 40.sp)),
              ),
              SizedBox(
                width: 20.w,
              ),
              BuildContainerImg(
                width: 128.h,
                height: 128.h,
                url: 'images/babyhealth/EmojiHeartEye.png',
                radius: 100,
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 320.h,
            height: 60.h,
            color: Color.fromARGB(255, 196, 196, 196),
            child: Center(
              child: Text(
                "Birthday remainder",
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 40.sp)),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Next achievement",
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 40.sp)),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                width: 163.h,
                height: 60.h,
                color: Color.fromARGB(255, 196, 196, 196),
                child: Center(
                  child: Text(
                    "Achieve",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 40.sp)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContainerBMI() {
    return Container(
      width: 461.w,
      height: 376.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 196, 196, 196),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Body Mass Index",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 48.sp)),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Current height:",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 28.sp)),
                    ),
                    Text(
                      "100cm",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 28.sp)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Current weight:",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 28.sp)),
                    ),
                    Text(
                      "4000g",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 28.sp)),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdateBMI()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 60.w),
                  width: 150.h,
                  height: 65.h,
                  color: Color.fromARGB(255, 80, 80, 80),
                  child: Center(
                    child: Text(
                      "Update",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20.sp)),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContainerNI() {
    return Container(
      width: 461.w,
      height: 376.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 196, 196, 196),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Nutrition Index",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 48.sp)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdateNI()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 60.w),
                  width: 150.h,
                  height: 65.h,
                  color: Color.fromARGB(255, 80, 80, 80),
                  child: Center(
                    child: Text(
                      "Update",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20.sp)),
                    ),
                  ),
                ),
              ),
            ],
          )
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
                height: 1705,
                width: ScreenUtil().screenWidth,
                child: Column(children: [
                  Category(),
                  Row(
                    children: [
                      _buildStatus(),
                      Spacer(),
                      Container(
                        width: ScreenUtil().screenWidth -
                            (ScreenUtil().screenWidth / 2.5),
                        height: 900.h,
                        color: Color.fromARGB(255, 196, 196, 196),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Last update BMI time",
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 40.sp)),
                            ),
                            Text(
                              "Last update NI time",
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 40.sp)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildContainerBMI(),
                            _buildContainerNI(),
                          ],
                        )
                      ],
                    ),
                  )
                ]))));
  }
}
