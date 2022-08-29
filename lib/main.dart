import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.deepPurple),
            buildKey(2, Colors.tealAccent),
            buildKey(3, Colors.pink),
            buildKey(4, Colors.green),
            buildKey(5, Colors.amber),
            buildKey(6, Colors.tealAccent),
            buildKey(7, Colors.deepOrangeAccent),
          ],
        )),
      ),
    );
  }
}
