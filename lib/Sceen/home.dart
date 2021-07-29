import 'package:babycare_web/Sceen/babyhealth/home_babyhealth.dart';
import 'package:babycare_web/Sceen/menusuggest/homesuggest.dart';
import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Widget _buildContainer(String title, String content, String url, Color color) {
  return Container(
    height: 680.h,
    width: 400.h,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.dosis(
              textStyle: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
        ),
        Container(
          width: 322.h,
          child: Column(
            children: [
              Text(
                content,
                style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        BuildContainerImg(
          height: 322.h,
          width: 322.h,
          url: url,
          radius: 10,
        )
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                height: 1140.w,
                width: 2112.w,
                child: Column(children: [
                  Category(
                    isActive: 'home',
                    isLogin: true,
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_Babyhealth()));
                        },
                        child: _buildContainer(
                            'Baby Health',
                            'Checking the health status of your baby',
                            'images/home/1.png',
                            Color.fromARGB(255, 167, 155, 242)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeSuggest()));
                        },
                        child: _buildContainer(
                            'Menu suggestion',
                            'Get to know what your baby needs for the coming week',
                            'images/home/2.png',
                            Color.fromARGB(255, 255, 218, 143)),
                      ),
                      _buildContainer(
                          'Vaccine suggestion',
                          'These following vaccine suggestion is very important ',
                          'images/home/3.png',
                          Color.fromARGB(255, 167, 155, 242)),
                      _buildContainer(
                          'Vaccine history',
                          'Story vaccine information for your baby',
                          'images/home/4.png',
                          Color.fromARGB(255, 255, 218, 143)),
                    ],
                  ),
                ]))));
  }
}
