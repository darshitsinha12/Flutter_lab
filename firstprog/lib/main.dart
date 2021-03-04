import 'package:firstprog/question.dart';
import 'package:firstprog/questions.dart';
import 'package:flutter/material.dart';
String q = questions[0].q;
bool a = questions[0].answer;
int i =0,score=0;
int j=i+1;

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz",
      home: SafeArea(
        child:Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                  "Question:"+"$j"+"$q",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.black,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        int j=i+1;
                        if(i<4) {
                          i++;
                          if(questions[i-1].answer==true){
                            score++;
                          }
                          q=questions[i].q;

                        }
                      });
                    },
                    child: Text(
                        "True",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.black,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        int j=i+1;
                        if(i<4) {
                          i++;
                          if(questions[i-1].answer==true){
                            score++;
                          }
                          q=questions[i].q;
                        }

                      });
                    },
                    child: Text(
                        "False",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                  "Score : "+"$score",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ) ,
      ),),

    );
  }
}


