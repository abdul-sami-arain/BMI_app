import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIRESULT extends StatelessWidget {
  const BMIRESULT({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);
    return Column(
      children: [
        Text((provider.BMI).toStringAsFixed(3).toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
        ),
        Text(provider.Comment.toString(),
                    style: TextStyle(
                      color: provider.color,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
        ),
        

      ],
    );
  }
}