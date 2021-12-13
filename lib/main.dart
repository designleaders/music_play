import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicPlay());
}

class MusicPlay extends StatelessWidget {
  void audioPalyerSerial(int audioPlayNumber) {
    final player = AudioCache();
    player.play('note$audioPlayNumber.wav');
  }

  Widget PlayerBuilder({required Color color, required int inputPlayerNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          child: Text(
            'Click Here',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            audioPalyerSerial(inputPlayerNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PlayerBuilder(color: Colors.red, inputPlayerNumber: 1),
                PlayerBuilder(color: Colors.blue, inputPlayerNumber: 2),
                PlayerBuilder(color: Colors.pink, inputPlayerNumber: 3),
                PlayerBuilder(color: Colors.purple, inputPlayerNumber: 4),
                PlayerBuilder(color: Colors.teal, inputPlayerNumber: 5),
                PlayerBuilder(color: Colors.green, inputPlayerNumber: 6),
                PlayerBuilder(color: Colors.orange, inputPlayerNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
