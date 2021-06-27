import 'package:babycare_web/Sceen/authenticate/login_page.dart';
import 'package:babycare_web/Sceen/authenticate/signup/part1.dart';
import 'package:babycare_web/Sceen/authenticate/signup/part2.dart';
import 'package:babycare_web/Sceen/authenticate/signup/signup_page.dart';
import 'package:babycare_web/Sceen/carriage.dart';
import 'package:babycare_web/Sceen/category.dart';
import 'package:babycare_web/Sceen/home.dart';
import 'package:flutter/material.dart';

import 'Sceen/authenticate/signup/part2.dart';
import 'Sceen/authenticate/signup/part3.dart';
import 'Sceen/authenticate/signup/part4.dart';

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
    return CarriagePage();

    // Scaffold(
    //   backgroundColor: Color(0xFFf5f5f5),
    //   body: SingleChildScrollView(child: LoginPage()),
    // );
  }
}
