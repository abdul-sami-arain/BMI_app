import 'package:bmiapp/presentation/widgets/Heading.dart';
import 'package:bmiapp/presentation/widgets/getResult.dart';
import 'package:bmiapp/presentation/widgets/subHeading.dart';
import 'package:bmiapp/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'dart:html';


class GetData extends StatelessWidget {
  const GetData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState provider = Provider.of<AppState>(context);

    final TextEditingController weight = TextEditingController();
    final TextEditingController height = TextEditingController();
    final TextEditingController age = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: provider.val,
                          onChanged: (val) {
                            provider.radioState(val);
                          }),
                      SizedBox(
                        height: 20,
                        child: Text("Male"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: provider.val,
                          onChanged: (val) {
                            provider.radioState(val);
                          }),
                      SizedBox(
                        height: 20,
                        child: Text("Female"),
                      ),
                    ],
                  ),
                ]
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                        controller: weight,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.amber,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow)),
                            labelText: 'Weight(kg)')),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                        controller: height,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          focusColor: Colors.amber,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow)),
                            labelText: 'Height(cm)')),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                        controller: age,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            focusColor: Colors.amber,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow)),
                            labelText: 'Age')),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  provider.SetValue(int.parse(age.text), int.parse(height.text),int.parse(weight.text));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GetResult()));
                },
                child: Text("Done"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                ),
              ),
        //        new FaIcon(FontAwesomeIcons.accessibleIcon),
        // new  FaIcon(FontAwesomeIcons.accusoft)

            ],
          ),
        )),
      ),
    );
  }
}
