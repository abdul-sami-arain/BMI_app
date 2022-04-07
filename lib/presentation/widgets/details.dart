import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children:[
          Container(
            width:160 ,
            height: 100,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CURRENT WEIGHT",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(provider.Weight.toString(),
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    Text("kg",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                  ],
                )
              ]
              ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width:160 ,
            height: 100,
            decoration: new BoxDecoration(      
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CURRENT HEIGHT",
                style: TextStyle(
                  
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text(provider.Height.toString(),
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    Text("cm",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                  ],
                )
              ]
              ),
          ),

          ]
        )
      ],
    );
  }
}