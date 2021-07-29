import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category.dart';

class VaccinationPage extends StatefulWidget {
  const VaccinationPage({Key? key}) : super(key: key);

  @override
  _VaccinationPageState createState() => _VaccinationPageState();
}

class _VaccinationPageState extends State<VaccinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                height: ScreenUtil().screenHeight,
                width: ScreenUtil().screenWidth,
                child: Column(children: [
                  Category(
                    isActive: 'vaccination',
                    isLogin: true,
                  ),
                ]))));
  }
}
