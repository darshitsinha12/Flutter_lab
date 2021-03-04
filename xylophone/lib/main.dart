import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
              child:Container(
                color: Colors.purple,
              child:FlatButton(onPressed: ()
              {
                AudioCache player = AudioCache();
                player.play("notes/note1.wav");

              },),
              ),
              ),
              Expanded(
                child:Container(
                  color: Colors.indigo,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();
                    player.play("notes/note2.wav");

                  },),
                ),
              ),
              Expanded(
                child:Container(
                  color: Colors.blue,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();
                    player.play("notes/note3.wav");

                  },),
                ),
              ),
              Expanded(
                child:Container(
                  color: Colors.green,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();
                    player.play("notes/note4.wav");

                  },),
                ),
              ),
              Expanded(
                child:Container(
                  color: Colors.yellow,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();
                    player.play("notes/note5.wav");

                  },),
                ),
              ),
              Expanded(
                child:Container(
                  color: Colors.orange,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();
                    player.play("notes/note6.wav");

                  },),
                ),
              ),
              Expanded(
                child:Container(
                  color: Colors.black,
                  child:FlatButton(onPressed: ()
                  {
                    AudioCache player = AudioCache();

                    player.play("notes/note7.wav");

                  },),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

