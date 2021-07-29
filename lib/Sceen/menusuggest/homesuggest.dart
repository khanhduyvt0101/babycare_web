import 'package:babycare_web/Sceen/menusuggest/lastweek.dart';
import 'package:babycare_web/Sceen/menusuggest/thisweek.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../category.dart';

class HomeSuggest extends StatefulWidget {
  const HomeSuggest({Key? key}) : super(key: key);

  @override
  _HomeSuggestState createState() => _HomeSuggestState();
}

class _HomeSuggestState extends State<HomeSuggest> {
  Widget _buildContainer() {
    return Container(
      width: 520 * 2.h,
      height: 258 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 167, 155, 242)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'His Vitamin B index: ',
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 28 * 2.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
              Container(
                height: 48 * 2.h,
                width: 150 * 2.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 148, 149),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    '50/100',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 32 * 2.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30 * 2.h,
                width: 250 * 2.h,
                color: Color.fromARGB(255, 133, 180, 242),
              ),
              Container(
                height: 30 * 2.h,
                width: 250 * 2.h,
                color: Colors.white,
              )
            ],
          ),
          Text(
            'He needs more',
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontSize: 28 * 2.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/vitamin_d.png',
                  radius: 0),
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/vitamin_b.png',
                  radius: 0),
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/milk.png',
                  radius: 0),
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/beef.png',
                  radius: 0),
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/protein.png',
                  radius: 0),
            ],
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
                height: 1136 * 2.h,
                width: ScreenUtil().screenWidth,
                child: Column(children: [
                  Category(
                    isActive: 'home',
                    isLogin: true,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LastweekPage()));
                                },
                                child: Container(
                                    width: 300 * 2.h,
                                    height: 65 * 2.h,
                                    color: Color.fromARGB(255, 255, 194, 143),
                                    child: Center(
                                      child: Text(
                                        'Last week',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                fontSize: 48 * 2.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white)),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                width: 2.w,
                                height: 65 * 2.h,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ThisweekPage()));
                                },
                                child: Container(
                                    width: 300 * 2.h,
                                    height: 65 * 2.h,
                                    color: Color.fromARGB(255, 252, 148, 149),
                                    child: Center(
                                      child: Text(
                                        'This week',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                fontSize: 48 * 2.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white)),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            width: 600 * 2.h,
                            height: 96 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 126, 209, 242)),
                            child: Center(
                              child: Container(
                                width: 400 * 2.h,
                                child: Column(
                                  children: [
                                    Text(
                                      'The last time you updated Nutrition Index was   5   days ago',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dosis(
                                          textStyle: TextStyle(
                                        fontSize: 32 * 2.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your baby is deficient in',
                                    style: GoogleFonts.dosis(
                                        textStyle: TextStyle(
                                            fontSize: 32 * 2.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 48 * 2.h,
                                    width: 150 * 2.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 189, 136, 242)),
                                    child: Center(
                                      child: Text(
                                        'Vitamin B',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                fontSize: 32 * 2.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 258 * 2.h,
                                  ),
                                  Container(
                                    height: 48 * 2.h,
                                    width: 150 * 2.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 189, 136, 242)),
                                    child: Center(
                                      child: Text(
                                        'Vitamin C',
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                fontSize: 32 * 2.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildContainer(),
                                  SizedBox(
                                    height: 80.h,
                                  ),
                                  _buildContainer(),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ]))));
  }
}
