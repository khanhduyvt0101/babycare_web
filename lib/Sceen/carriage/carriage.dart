import 'package:babycare_web/Sceen/carriage/createbaby.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';

class CarriagePage extends StatefulWidget {
  const CarriagePage({Key? key}) : super(key: key);

  @override
  _CarriagePageState createState() => _CarriagePageState();
}

class _CarriagePageState extends State<CarriagePage> {
  Widget _buildContainer(String name, String month, String url) {
    return Container(
      height: 400.h,
      width: 1200.h,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 167, 155, 242),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          SizedBox(width: 5.w),
          BuildContainerImg(
            height: 380.h,
            width: 380.h,
            url: url,
            radius: 8,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 60.sp)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 1.5.w,
                    height: 60.h,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 148, 149),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        '15',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 36.sp)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    month,
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 40.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 128.h,
                height: 128.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('images/carriage/EmojiHeartEye.png'),
                        fit: BoxFit.cover)),
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
            child: Container(
                height: 1140.w,
                width: ScreenUtil().screenWidth,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Category(
                        isActive: 'carriage',
                        isLogin: true,
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80.h,
                              width: 120.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 255, 218, 143)),
                              child: Center(
                                child: Text(
                                  '2/3',
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 36.sp)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateBaby()));
                              },
                              child: Container(
                                height: 80.h,
                                width: 120.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromARGB(255, 226, 226, 226)),
                                child: Center(
                                    child: BuildContainerImg(
                                  width: 50.h,
                                  height: 50.h,
                                  url: 'images/carriage/plus.png',
                                  radius: 100,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: _buildContainer(
                            'Name', "month", 'images/carriage/baby1.png'),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      _buildContainer(
                          'Name', "month", 'images/carriage/baby2.png'),
                    ]))));
  }
}
