import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category.dart';

class CarriagePage extends StatefulWidget {
  const CarriagePage({Key? key}) : super(key: key);

  @override
  _CarriagePageState createState() => _CarriagePageState();
}

class _CarriagePageState extends State<CarriagePage> {
  Widget _buildContainer(String name, String month) {
    return Container(
      height: 240,
      width: 1000,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 226, 226),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 225,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[700],
            ),
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
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 1.5,
                    height: 25,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        '15',
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    month,
                    style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image:
                            AssetImage('images/carriage/EmojiHeartEye.png'))),
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Category(),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 226, 226, 226)),
                              child: Center(
                                child: Text('2/3'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 40,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(255, 226, 226, 226)),
                              child: Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/carriage/plus.png'))),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      _buildContainer('Name', "month"),
                      SizedBox(
                        height: 20,
                      ),
                      _buildContainer('Name', "month"),
                    ]))));
  }
}
