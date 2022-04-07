import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubHeading extends StatelessWidget {
   SubHeading(
    {Key? key, 
    required this.description,
    }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Text(
        "$description",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 10.sp,
          color: HexColor("#909090"),
          // height: 19.6
        ),
      ),
    );
  }
}