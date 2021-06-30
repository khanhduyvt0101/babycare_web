import 'package:babycare_web/UI_Widget/containerImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../category.dart';

class CreateBaby extends StatefulWidget {
  const CreateBaby({Key? key}) : super(key: key);

  @override
  _CreateBabyState createState() => _CreateBabyState();
}

class _CreateBabyState extends State<CreateBaby> {
  bool man = false;
  bool woman = false;
  manclick() {
    setState(() {
      man = true;
      woman = false;
    });
  }

  womanclick() {
    setState(() {
      man = false;
      woman = true;
    });
  }

  Widget _buildContainerNI(String url, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          height: 40 * 2.h,
          width: 40 * 2.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image:
                  DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 220 * 2.h,
          height: 48 * 2.h,
          decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.white,
              borderRadius: BorderRadius.circular(35)),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                                  fontSize: 20 * 2.sp)),
                          //textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.h,
                              width: 100 * 2.h,
                              decoration: BoxDecoration(
                                  color: Colors.black, border: Border.all()),
                            ),
                            Container(
                              height: 10.h,
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
          ),
        )
      ],
    );
  }

  Widget _buildContainerBMI(String text, String url) {
    return Container(
      width: 300 * 2.h,
      height: 48 * 2.h,
      decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(35)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 40 * 2.h,
            width: 40 * 2.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image:
                    DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
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
                            fontSize: 20 * 2.sp)),
                    //textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10.h,
                        width: 100 * 2.h,
                        decoration: BoxDecoration(
                            color: Colors.black, border: Border.all()),
                      ),
                      Container(
                        height: 10.h,
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

  Widget _buildCreateBMI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 200 * 2.h,
            height: 48 * 2.h,
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white,
                borderRadius: BorderRadius.circular(35)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40 * 2.h,
                  width: 40 * 2.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image:
                              AssetImage('images/carriage/createbaby/date.png'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'dd/MM/yy',
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 20 * 2.sp)),
                  //textAlign: TextAlign.center,
                ),
              ],
            )),
        SizedBox(
          height: 15,
        ),
        _buildContainerBMI(
            'Height: 100 cm', 'images/carriage/createbaby/height.png'),
        SizedBox(
          height: 15,
        ),
        _buildContainerBMI(
            'Weight: 400 g', 'images/carriage/createbaby/weight.png'),
      ],
    );
  }

  Widget _buildSexBaby() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              manclick();
            },
            child: Container(
              height: 100 * 2.h,
              width: 100 * 2.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color:
                      man ? Colors.amber : Color.fromARGB(255, 226, 226, 226)),
              child: Center(
                child: BuildContainerImg(
                  height: 80 * 2.h,
                  width: 80 * 2.h,
                  url: 'images/carriage/createbaby/man.png',
                  radius: 100,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          InkWell(
            onTap: () {
              womanclick();
            },
            child: Container(
              height: 100 * 2.h,
              width: 100 * 2.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: woman
                      ? Colors.amber
                      : Color.fromARGB(255, 226, 226, 226)),
              child: Center(
                child: BuildContainerImg(
                  height: 80 * 2.h,
                  width: 80 * 2.h,
                  url: 'images/carriage/createbaby/woman.png',
                  radius: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainerCreate() {
    return Container(
      width: 560 * 2.h,
      height: 1277 * 2.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'What gender is the kid',
            style: GoogleFonts.dosis(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24 * 2.sp)),
          ),
          _buildSexBaby(),
          _buildCreateBMI(),
          Container(
            width: 300 * 2.h,
            child: Column(
              children: [
                Text(
                  'Can you remember what your baby ate last week?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 24 * 2.sp)),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                _buildContainerNI(
                    'images/carriage/createbaby/porridge.png', 'Porridge: 0 b'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI(
                    'images/carriage/createbaby/milk.png', 'Milk: 0 ml'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI(
                    'images/carriage/createbaby/beef.png', 'Meat: 0 g'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI(
                    'images/carriage/createbaby/vitamin_d.png', 'Fish: 0 g'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI(
                    'images/carriage/createbaby/egg.png', 'Egg: 0 unit'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI('images/carriage/createbaby/salad.png',
                    'Green Vegets: 0 g'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI(
                    'images/carriage/createbaby/carrot.png', 'Red Vegets: 0 g'),
                SizedBox(
                  height: 20.h,
                ),
                _buildContainerNI('images/carriage/createbaby/orange.png',
                    'Citrus fruit: 0 g'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 300 * 2.h,
              height: 65 * 2.h,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 80, 80, 80)),
              child: Center(
                  child: Text(
                'DONE',
                style: TextStyle(color: Colors.white),
              )),
            ),
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
                height: 1529 * 2.h,
                width: ScreenUtil().screenWidth,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Category(),
                      SizedBox(
                        height: 100.h,
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 300 * 2.h,
                                child: Column(
                                  children: [
                                    Text(
                                      "Let us know more about your kid !!",
                                      style: GoogleFonts.dosis(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 40 * 2.sp)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Container(
                                height: 400 * 2.h,
                                width: 500 * 2.h,
                                color: Color.fromARGB(255, 196, 196, 196),
                              )
                            ],
                          ),
                          _buildContainerCreate(),
                        ],
                      ))
                    ]))));
  }
}
