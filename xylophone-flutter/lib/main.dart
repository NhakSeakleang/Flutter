import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                final AudioCache player = AudioCache();
                player.play('note1.wav');
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
