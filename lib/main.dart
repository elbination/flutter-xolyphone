import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play('sounds/note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          // Remove rounded corner
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
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
              buildKey(color: Colors.teal, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.orange, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.black, soundNumber: 6),
              buildKey(color: Colors.amber, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
