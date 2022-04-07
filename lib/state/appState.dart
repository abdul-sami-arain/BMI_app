import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
//RADIO BUTTON
  int val = 1;
  void radioState(var value) {
    val = value;
    notifyListeners();
  }

//Calculations:
  var Age;
  var Height;
  var Weight;
  var BMI;
  var Comment;
  late final color;

  SetValue(age, height, weight) {
    Age = age;
    Height = height;
    var mHeight = height / 100;
    var sqrHeight = mHeight*mHeight;
    Weight = weight;
    BMI = (weight /sqrHeight) ;
    if (BMI >= 0 && BMI < 18.4) {
      Comment = "UNDERWEIGHT";
      color = Colors.lightBlue;
    } else if (BMI >= 18.4 && BMI < 24.9) {
      Comment = "NORMALWEIGHT";
      color = Colors.lightGreen;
    } else if (BMI >= 24.9 && BMI < 31) {
      Comment = "NORMALWEIGHT";
      color = Colors.orange;
    } else if (BMI >= 31) {
      Comment = "OBESE";
      color = Colors.red;
    }
  }
}
