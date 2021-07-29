import 'package:babycare_web/Sceen/babyhealth/home_babyhealth.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';

class UpdateBMI extends StatefulWidget {
  const UpdateBMI({Key? key}) : super(key: key);

  @override
  _UpdateBMIState createState() => _UpdateBMIState();
}

class _UpdateBMIState extends State<UpdateBMI> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Last height:",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 30 * 2.sp)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "222cm",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 30 * 2.sp)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Last weight:",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 30 * 2.sp)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "400g",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 30 * 2.sp)),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "since",
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
        ],
      ),
    );
  }

  Widget _buildTextField(String text, String url) {
    return Container(
      width: 450 * 2.h,
      height: 72 * 2.h,
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(35)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5.w),
            height: 60 * 2.h,
            width: 60 * 2.h,
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
                            fontSize: 30 * 2.sp)),
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
                            color: Color.fromARGB(255, 133, 180, 242),
                            border: Border.all()),
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

  Widget _buildNewUpdate() {
    return Container(
      height: 356 * 2.h,
      width: 497 * 2.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 167, 155, 242),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "How much did your kid grow up",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 36 * 2.sp)),
            textAlign: TextAlign.center,
          ),
          Container(
            child: Column(
              children: [
                _buildTextField('Height: 100 cm', 'images/global/height.png'),
                SizedBox(
                  height: 40.h,
                ),
                _buildTextField('Weight: 400 g', 'images/global/weight.png'),
              ],
            ),
          )
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
                height: 1221 * 2.h,
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
