import 'package:babycare_web/Sceen/carriage/carriage.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Part4_Signup extends StatefulWidget {
  const Part4_Signup({Key? key}) : super(key: key);

  @override
  _Part4_SignupState createState() => _Part4_SignupState();
}

class _Part4_SignupState extends State<Part4_Signup> {
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
                    height: 100.h,
                  ),
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
                          //padding: EdgeInsets.only(left: 50, right: 50),

                          child: Text(
                            'Well done!',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 40 * 2.sp)),
                          ),
                        ),
                        Container(
                          height: 228 * 2.h,
                          width: 373 * 2.h,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 196, 196),
                          ),
                          child: Center(
                              child: Text('Idling Animation here !',
                                  style: GoogleFonts.dosis(
                                      textStyle:
                                          TextStyle(fontSize: 24 * 2.sp)))),
                        ),
                        Container(
                          width: 300 * 2.h,
                          child: Column(
                            children: [
                              Text(
                                  'We have processing your results Hang on tight!',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dosis(
                                      textStyle:
                                          TextStyle(fontSize: 24 * 2.sp))),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CarriagePage()));
                          },
                          child: Container(
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 80, 80, 80)),
                            child: Center(
                                child: Text('DONE',
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
                  ),
                ]))));
  }
}
