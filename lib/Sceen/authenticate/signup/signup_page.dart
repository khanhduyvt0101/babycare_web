import 'package:babycare_web/Sceen/authenticate/signup/part1.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Widget _buildTextField(String text, bool ispass) {
    return Container(
        width: 300 * 2.h,
        height: 65 * 2.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 226, 226, 226)),
        child: TextField(
          obscureText: ispass,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            labelText: text,
            contentPadding:
                EdgeInsets.only(left: 30, bottom: 0, top: 0, right: 0),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SingleChildScrollView(
        child: Container(
          height: 1024 * 2.h,
          width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              Category(),
              SizedBox(
                height: 80.h,
              ),
              Container(
                height: 660 * 2.h,
                width: 520 * 2.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120.h,
                      ),
                      Container(
                        child: Text(
                          'Signing Up',
                          style: GoogleFonts.dosis(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 40 * 2.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      _buildTextField('Username', false),
                      SizedBox(
                        height: 35.h,
                      ),
                      _buildTextField('Password', true),
                      SizedBox(
                        height: 35.h,
                      ),
                      _buildTextField('Re-Password', true),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(bottom: 40 * 2.h, left: 70 * 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.w),
                              height: 30 * 2.h,
                              width: 30 * 2.h,
                              child: Checkbox(
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                            ),
                            Text('Remember',
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  //fontSize: 34)),
                                )))
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
                                    builder: (context) => Part1_Signup()));
                          },
                          child: Container(
                            width: 300 * 2.h,
                            height: 65 * 2.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 80, 80, 80)),
                            child: Center(
                                child: Text(
                              'SIGN UP',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 20 * 2.sp)),
                            )),
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
