import 'package:babycare_web/Sceen/babyhealth/home_babyhealth.dart';
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
  Widget _buildLastUpdate() {
    return Container(
        height: 96 * 2.h,
        width: 420 * 2.h,
        color: Color.fromARGB(255, 196, 196, 196),
        child: Center(
          child: Text(
            "Last update was since...",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 28 * 2.sp)),
          ),
        ));
  }

  Widget _buildNewUpdate() {
    return Container(
      height: 284 * 2.h,
      width: 397 * 2.h,
      color: Color.fromARGB(255, 196, 196, 196),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Update Nutri Index",
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 36 * 2.sp)),
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
                width: 1440 * 2.w,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Category(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 700 * 2.h,
                              width: 700 * 2.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 196, 196, 196)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Name",
                                  style: GoogleFonts.dosis(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 60 * 2.sp)),
                                ),
                                Container(
                                  child: Column(
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
                                        height: 30.h,
                                      ),
                                      Text(
                                        "Status:",
                                        style: GoogleFonts.dosis(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                                fontSize: 40 * 2.sp)),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildLastUpdate(),
                                _buildNewUpdate(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 450 * 2.h,
                                    height: 65 * 2.h,
                                    color: Color.fromARGB(255, 80, 80, 80),
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
