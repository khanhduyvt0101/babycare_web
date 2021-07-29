import 'package:babycare_web/Sceen/authenticate/login_page.dart';
import 'package:babycare_web/Sceen/authenticate/signup/part1.dart';
import 'package:babycare_web/Sceen/authenticate/signup/part2.dart';
import 'package:babycare_web/Sceen/authenticate/signup/signup_page.dart';
import 'package:babycare_web/Sceen/babyhealth/home_babyhealth.dart';
import 'package:babycare_web/Sceen/babyhealth/updateBMI.dart';
import 'package:babycare_web/Sceen/babyhealth/updateNI.dart';
import 'package:babycare_web/Sceen/carriage/carriage.dart';
import 'package:babycare_web/Sceen/carriage/createbaby.dart';

import 'package:babycare_web/Sceen/category.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:babycare_web/Sceen/menusuggest/homesuggest.dart';
import 'package:babycare_web/Sceen/menusuggest/lastweek.dart';
import 'package:babycare_web/Sceen/menusuggest/thisweek.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Sceen/authenticate/signup/part2.dart';
import 'Sceen/authenticate/signup/part3.dart';
import 'Sceen/authenticate/signup/part4.dart';

//  code deploy:                        firebase deploy --only hosting

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StartPage());
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(1440, 1705),
        orientation: Orientation.landscape);
    return LoginPage();

    // Scaffold(
    //   backgroundColor: Color(0xFFf5f5f5),
    //   body: SingleChildScrollView(child: LoginPage()),
    // );
  }
}
