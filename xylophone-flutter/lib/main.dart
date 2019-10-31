import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache player = AudioCache();

  void playSound(int number) {
    player.play('note$number.wav');
  }

  List<Widget> setUpButton() {
    var listButton = <Widget>[];
    var colorsButton = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];

    for (int i = 1; i <= 7; i++) {
      listButton.add(
        Expanded(
          child: FlatButton(
            color: colorsButton[i - 1],
            onPressed: () {
              playSound(i);
            },
            child: Text('Note $i'),
          ),
        ),
      );
    }
    return listButton;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: setUpButton(),
          ),
        ),
      ),
    );
  }
}
