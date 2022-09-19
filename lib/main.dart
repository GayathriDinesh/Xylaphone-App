import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int notenumber) {
    final player = AudioCache();
    player.play('note$notenumber.wav');
  }
   Expanded button({Color color, int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  button(color: Colors.red, number:1),
                  button(color: Colors.orange, number:2),
                  button(color: Colors.yellow, number:3),
                  button(color: Colors.green, number:4),
                  button(color: Colors.teal, number:5),
                  button(color: Colors.blue, number:6),
                  button(color: Colors.purple, number:7),
                ],
              )
        ),
      ),
    );
  }
}
