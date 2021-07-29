import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                    isActive: 'account',
                    isLogin: true,
                  ),
                ]))));
  }
}
