import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildContainerImg extends StatelessWidget {
  final double? width;
  final double? height;
  final String? url;
  final double? radius;

  const BuildContainerImg(
      {Key? key, this.width, this.height, this.url, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          image: DecorationImage(image: AssetImage(url!), fit: BoxFit.cover)),
    );
  }
}
