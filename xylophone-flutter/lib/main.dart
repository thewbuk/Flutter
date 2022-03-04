import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey(int arg, Color colo) {
  return Expanded(
    child: FlatButton(
      color: colo,
      onPressed: () {
        final player = AudioCache();
        player.play('note$arg.wav');
      },
      child: Text('Play'),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.orange),
              buildKey(2, Colors.green),
              buildKey(3, Colors.pink),
              buildKey(4, Colors.purple),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.white),
              buildKey(7, Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
