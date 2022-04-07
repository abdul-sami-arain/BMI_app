import 'package:bmiapp/presentation/widgets/bmiResult.dart';
import 'package:bmiapp/presentation/widgets/details.dart';
import 'package:bmiapp/presentation/widgets/details0.dart';
import 'package:bmiapp/presentation/widgets/guage.dart';
import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'dart:html';



class GetResult extends StatelessWidget {
  const GetResult({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        AppState provider = Provider.of<AppState>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        
        appBar: AppBar(
          backgroundColor: Colors.amber,
           leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ), 
          title: Text("Results"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Details(),
                SizedBox(height: 10,),
                Details0(),
                SizedBox(height: 10,),
                Guage(),
                BMIRESULT()
              ],
            ),
          ) 
          ),
      ),
      
    );
  }
}