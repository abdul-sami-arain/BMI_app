import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details0 extends StatelessWidget {
  const Details0({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
            width:160 ,
            height: 100,
            decoration: new BoxDecoration(      
              borderRadius: new BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
              FontAwesomeIcons.person,
              color: (provider.val==2)? Colors.grey :Colors.lightGreen,
              size: 60,
              ),
            FaIcon(
              FontAwesomeIcons.personDress,
              color: (provider.val==1)? Colors.grey :Colors.lightGreen,
              size: 60,
              ),
              ],
            ),
          ),
            SizedBox(width: 10),
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
                Text("CURRENT AGE",
                style: TextStyle(
                  
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text(provider.Age.toString(),
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    Text("years",
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
          ],
        )
      ],
    );
  }
}