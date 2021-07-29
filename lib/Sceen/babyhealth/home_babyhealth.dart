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
            width: 480.h,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 144),
            ),
            child: Center(
              child: Text(
                "15 days left to one month old",
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
                width: 191.h,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 144),
                ),
                child: Center(
                  child: Text(
                    "Achieve",
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 30.sp)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextFieldBMI(
      String urlicon, String text, String number, String urlemoji) {
    return Container(
      height: 65 * 2.h,
      width: 405 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 226, 226, 226)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BuildContainerImg(
            height: 52 * 2.h,
            width: 46 * 2.h,
            url: urlicon,
            radius: 0,
          ),
          Text(
            text,
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20 * 2.sp)),
          ),
          Container(
              height: 42 * 2.h,
              width: 75 * 2.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 133, 180, 242)),
              child: Center(
                child: Text(
                  number,
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20 * 2.sp)),
                ),
              )),
          BuildContainerImg(
            width: 42 * 2.h,
            height: 42 * 2.h,
            url: urlemoji,
            radius: 0,
          )
        ],
      ),
    );
  }

  Widget _buildContainerBMI() {
    return Container(
      width: 461 * 2.h,
      height: 376 * 2.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 167, 155, 242),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Body Mass Index",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 48 * 2.sp)),
          ),
          _buildTextFieldBMI('images/global/height.png', "Current height:",
              "100cm", 'images/global/EmojiSad.png'),
          _buildTextFieldBMI('images/global/weight.png', "Current weight:",
              "4000g", 'images/global/EmojiHeartEye.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdateBMI()));
                },
                child: Container(
                  width: 174 * 2.h,
                  height: 84 * 2.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 252, 148, 149)),
                  child: Center(
                    child: Text(
                      "Update",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20 * 2.sp)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextFieldNI(String urlicon, String text, String urlemoji) {
    return Container(
      width: 162 * 2.h,
      height: 190 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 226, 226, 226)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BuildContainerImg(
            height: 45 * 2.h,
            width: 45 * 2.h,
            url: urlicon,
            radius: 0,
          ),
          Text(
            text,
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20 * 2.sp)),
          ),
          BuildContainerImg(
            height: 58 * 2.h,
            width: 58 * 2.h,
            url: urlemoji,
            radius: 0,
          )
        ],
      ),
    );
  }

  Widget _buildContainerNI() {
    return Container(
      width: 461 * 2.h,
      height: 1210 * 2.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 167, 155, 242),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Nutrition Index",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 48 * 2.sp)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextFieldNI('images/global/bread.png', 'Carbohydrate',
                  'images/global/EmojiHeartEye.png'),
              _buildTextFieldNI('images/global/fat.png', 'Fat',
                  'images/global/EmojiHappy.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextFieldNI('images/global/protein.png', 'Protein',
                  'images/global/EmojiSmile.png'),
              _buildTextFieldNI('images/global/vitamin_a.png', 'Vitamin A',
                  'images/global/EmojiHeartEye.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextFieldNI('images/global/vitamin_b.png', 'Vitamin B',
                  'images/global/EmojiSad.png'),
              _buildTextFieldNI('images/global/vitamin_c.png', 'Vitamin C',
                  'images/global/EmojiHappy.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextFieldNI('images/global/vitamin_d.png', 'Vitamin D',
                  'images/global/EmojiSmile.png'),
              _buildTextFieldNI('images/global/beef.png', 'Iron',
                  'images/global/EmojiHappy.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTextFieldNI('images/global/milk.png', 'Calcium',
                  'images/global/EmojiHappy.png'),
              _buildTextFieldNI('images/global/seafood.png', 'Iodine',
                  'images/global/EmojiHeartEye.png')
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UpdateNI()));
            },
            child: Container(
              height: 68 * 2.h,
              width: 174 * 2.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 252, 148, 149)),
              child: Center(
                child: Text(
                  "Update",
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20 * 2.sp)),
                ),
              ),
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
                height: 2459 * 2.h,
                width: ScreenUtil().screenWidth,
                child: Column(children: [
                  Category(
                    isActive: 'home',
                    isLogin: true,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatus(),
                      BuildContainerImg(
                        height: 900.h,
                        width: 900.h,
                        url: 'images/home/1.png',
                        radius: 10,
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
                            Row(
                              children: [
                                Container(
                                  height: 40.h,
                                  width: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 119, 26),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                    child: Text(
                                      '!',
                                      style: GoogleFonts.dosis(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 40.sp)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Text(
                                  " It’s been ",
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 40.sp)),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 119, 26),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                    child: Text(
                                      '10',
                                      style: GoogleFonts.dosis(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 40.sp)),
                                    ),
                                  ),
                                ),
                                Text(
                                  " days since you last updated BMI",
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 40.sp)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  " It’s been ",
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 40.sp)),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 40.h,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 136, 192, 87),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                    child: Text(
                                      '4',
                                      style: GoogleFonts.dosis(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 40.sp)),
                                    ),
                                  ),
                                ),
                                Text(
                                  " days since you last updated NI",
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 40.sp)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
