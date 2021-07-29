import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';
import 'lastweek.dart';

class ThisweekPage extends StatefulWidget {
  const ThisweekPage({Key? key}) : super(key: key);

  @override
  _ThisweekPageState createState() => _ThisweekPageState();
}

class _ThisweekPageState extends State<ThisweekPage> {
  Widget _buildTotalContainer() {
    return Container(
      width: 559 * 2.h,
      height: 260 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 167, 155, 242)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Total for the next   ',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 32 * 2.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  Container(
                    height: 48 * 2.h,
                    width: 48 * 2.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 252, 148, 149)),
                    child: Center(
                      child: Text(
                        '7',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontSize: 36 * 2.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  Text(
                    '   days from Sunday',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 32 * 2.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: 740 * 2.h,
                color: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/vitamin_d.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/vitamin_b.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/milk.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: 25.w,
            ),
            BuildContainerImg(
                height: 60 * 2.h,
                width: 60 * 2.h,
                url: 'images/global/protein.png',
                radius: 0),
            Text(
              '  100g',
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                      fontSize: 36 * 2.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
          ])
        ],
      ),
    );
  }

  Widget _buildNextContainer(bool isTomorrow) {
    return Container(
      width: 740 * 2.h,
      height: 340 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isTomorrow
              ? Color.fromARGB(255, 252, 148, 149)
              : Color.fromARGB(255, 126, 209, 242)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  !isTomorrow
                      ? Row(
                          children: [
                            Container(
                              height: 48 * 2.h,
                              width: 48 * 2.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 252, 148, 149)),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontSize: 36 * 2.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                            Text(
                              '  days ago',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontSize: 36 * 2.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                          ],
                        )
                      : Container(
                          height: 48 * 2.h,
                          width: 192 * 2.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 255, 194, 143)),
                          child: Center(
                            child: Text(
                              'Tomorrow',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontSize: 36 * 2.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                  Spacer(),
                  Text(
                    'dd/MM/yyyy',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 1.h,
                width: 740 * 2.h,
                color: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Breakfast',
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 36 * 2.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/vitamin_d.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/vitamin_b.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
              Row(
                children: [
                  BuildContainerImg(
                      height: 60 * 2.h,
                      width: 60 * 2.h,
                      url: 'images/global/milk.png',
                      radius: 0),
                  Text(
                    '  100g',
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontSize: 36 * 2.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              'Noon',
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                      fontSize: 36 * 2.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            Row(
              children: [
                BuildContainerImg(
                    height: 60 * 2.h,
                    width: 60 * 2.h,
                    url: 'images/global/vitamin_d.png',
                    radius: 0),
                Text(
                  '  100g',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontSize: 36 * 2.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(
              children: [
                BuildContainerImg(
                    height: 60 * 2.h,
                    width: 60 * 2.h,
                    url: 'images/global/vitamin_b.png',
                    radius: 0),
                Text(
                  '  100g',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontSize: 36 * 2.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(
              children: [
                BuildContainerImg(
                    height: 60 * 2.h,
                    width: 60 * 2.h,
                    url: 'images/global/milk.png',
                    radius: 0),
                Text(
                  '  100g',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontSize: 36 * 2.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              'Dinner',
              style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                      fontSize: 36 * 2.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
            Row(
              children: [
                BuildContainerImg(
                    height: 60 * 2.h,
                    width: 60 * 2.h,
                    url: 'images/global/vitamin_d.png',
                    radius: 0),
                Text(
                  '  100g',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontSize: 36 * 2.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(
              children: [
                BuildContainerImg(
                    height: 60 * 2.h,
                    width: 60 * 2.h,
                    url: 'images/global/vitamin_b.png',
                    radius: 0),
                Text(
                  '  100g',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontSize: 36 * 2.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(children: [
              BuildContainerImg(
                  height: 60 * 2.h,
                  width: 60 * 2.h,
                  url: 'images/global/milk.png',
                  radius: 0),
              Text(
                '  100g',
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 36 * 2.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
            ])
          ])
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
                height: 1107 * 2.h,
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
                                        builder: (context) => LastweekPage()));
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
                            Container(
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
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildTotalContainer(),
                            Column(
                              children: [
                                _buildNextContainer(true),
                                SizedBox(
                                  height: 100.h,
                                ),
                                _buildNextContainer(false)
                              ],
                            )
                          ],
                        ),
                      ])))
                ]))));
  }
}
