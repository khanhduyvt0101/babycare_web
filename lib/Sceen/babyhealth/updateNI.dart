import 'package:babycare_web/Sceen/babyhealth/home_babyhealth.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';

class UpdateNI extends StatefulWidget {
  const UpdateNI({Key? key}) : super(key: key);

  @override
  _UpdateNIState createState() => _UpdateNIState();
}

class _UpdateNIState extends State<UpdateNI> {
  Widget _buildStatus() {
    return Container(
      width: 900.h,
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
                    fontSize: 60 * 2.sp)),
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
                        fontSize: 40 * 2.sp)),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 40 * 2.h,
                width: 40 * 2.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 148, 149),
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
                        fontSize: 40 * 2.sp)),
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
                        fontSize: 40 * 2.sp)),
              ),
              SizedBox(
                width: 20.w,
              ),
              BuildContainerImg(
                width: 128 * 2.h,
                height: 128 * 2.h,
                url: 'images/babyhealth/EmojiHeartEye.png',
                radius: 100,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLastUpdate() {
    return Container(
      height: 120 * 2.h,
      width: 525 * 2.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 145, 242, 233),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 40.w,
          ),
          Text(
            "Last update",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30 * 2.sp)),
          ),
          Text(
            "was",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 30 * 2.sp)),
          ),
          Container(
            height: 40 * 2.h,
            width: 40 * 2.h,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 148, 149),
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
          Text(
            "days ago",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 30 * 2.sp)),
          ),
          SizedBox(
            width: 40.w,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String text, double distancebottom) {
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
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 133, 180, 242),
                      border: Border.all()),
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

  Widget _buildNewUpdate() {
    return Container(
      height: 863 * 2.h,
      width: 497 * 2.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 167, 155, 242),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Container(
            width: 387 * 2.h,
            child: Column(
              children: [
                Text(
                  'Remember what your kid ate few days ago',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 40 * 2.sp,
                          fontWeight: FontWeight.w700)),
                  textAlign: TextAlign.center,
                  //textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //margin: EdgeInsets.only(left: 40),
                width: 80 * 2.h,
                height: 700 * 2.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('/images/signup/part3_signup.png'))),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h, left: 20.w),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    _buildTextField('Porridge: 0 b', 35 * 2.h),
                    _buildTextField('Milk: 0 ml', 40 * 2.h),
                    _buildTextField('Meat: 0 g', 45 * 2.h),
                    _buildTextField('Fish: 0 g', 40 * 2.h),
                    _buildTextField('Egg: 0 unit', 40 * 2.h),
                    _buildTextField('Vegets: 0 g', 40 * 2.h),
                    _buildTextField('Porridge: 0 b', 35 * 2.h),
                    _buildTextField('Citrus fruit: 0 g', 35 * 2.h),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                height: 1806 * 2.h,
                width: 1440 * 2.w,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Category(
                        isActive: 'home',
                        isLogin: true,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BuildContainerImg(
                              height: 700 * 2.h,
                              width: 700 * 2.h,
                              url: 'images/carriage/baby1.png',
                              radius: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStatus(),
                                _buildLastUpdate(),
                                _buildNewUpdate(),
                                Container(
                                  width: 497 * 2.h,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'This update will be applied for ',
                                            style: GoogleFonts.dosis(
                                                textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30 * 2.sp,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            textAlign: TextAlign.center,
                                            //textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            height: 40 * 2.h,
                                            width: 40 * 2.h,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 252, 148, 149),
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                            child: Center(
                                              child: Text(
                                                '15',
                                                style: GoogleFonts.dosis(
                                                    textStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 36.sp)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        ' days from the last update ',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30 * 2.sp,
                                                fontWeight: FontWeight.w400)),

                                        //textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 450 * 2.h,
                                    height: 65 * 2.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 252, 148, 149),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'DONE',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ]))));
  }
}
