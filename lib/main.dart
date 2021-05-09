import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {  //a function with return type expanded
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
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
              buildKey(color: Colors.blue, soundNumber:1),
              buildKey(color: Colors.pinkAccent, soundNumber:2),
              buildKey(color: Colors.yellow, soundNumber:3),
              buildKey(color: Colors.teal, soundNumber:4),
              buildKey(color: Colors.purple, soundNumber:5),
              buildKey(color: Colors.red, soundNumber:6),
              buildKey(color: Colors.orange, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
