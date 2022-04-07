import 'package:bmiapp/presentation/widgets/getData.dart';
import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  const Presentation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetData(),
    );
  }
}