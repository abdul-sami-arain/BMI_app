import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'dart:html';

class Guage extends StatelessWidget {
  const Guage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return SfRadialGauge(
            axes:<RadialAxis>[
              RadialAxis(
                minimum: 9,
                maximum: 65,
                pointers: <GaugePointer>[
                  NeedlePointer(value: provider.BMI,enableAnimation: true,),               
                ],
                ranges: [
                  GaugeRange(startValue: 0, endValue: 19,color: Colors.lightBlue,),
                  GaugeRange(startValue: 19, endValue: 24,color: Colors.lightGreen,),
                  GaugeRange(startValue: 24, endValue: 30,color: Colors.orange,),
                  GaugeRange(startValue: 30, endValue: 64,color: Colors.red,),
                ],
              ),
             
            ],
          );
  }
}