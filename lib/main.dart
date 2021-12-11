import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicPlay());
}

class MusicPlay extends StatelessWidget {
  void audioPlayers(int audioPlayNumber) {
    final player = AudioCache();
    player.play('note$audioPlayNumber.wav');
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
                FlatButton(
                  height: 80,
                  color: Colors.red,
                  onPressed: () {
                    audioPlayers(1);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.orange,
                  onPressed: () {
                    audioPlayers(2);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.teal,
                  onPressed: () {
                    audioPlayers(3);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.pink,
                  onPressed: () {
                    audioPlayers(4);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.purple,
                  onPressed: () {
                    audioPlayers(5);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.blue,
                  onPressed: () {
                    audioPlayers(6);
                  },
                  child: Text('Click Me'),
                ),
                FlatButton(
                  height: 80,
                  color: Colors.green,
                  onPressed: () {
                    audioPlayers(7);
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
