import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
int dice1 = 1, dice2=2;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice App",
      home: SafeArea(
        child: Scaffold(

          body: Row(
            mainAxisAlignment: (MainAxisAlignment.spaceBetween),
            children: [
              Expanded(
                child: FlatButton(
                  child:

                  Image.asset('assets/$dice1.png'),
                  onPressed: (){
                    changeFace();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child:
                  Image.asset('assets/$dice2.png'),
                  onPressed: (){
                    changeFace();
                  },
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
  void changeFace(){
    setState(() {
      dice1=Random().nextInt(6)+1;
      dice2=Random().nextInt(6)+1;
    });
  }
}

