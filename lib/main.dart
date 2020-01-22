import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PlayButton(
              color: Colors.red,
              play: () {
                player.play("note1.wav");
              },
            ),
            PlayButton(
              color: Colors.orange,
              play: () {
                player.play("note2.wav");
              },
            ),
            PlayButton(
              color: Colors.yellow,
              play: () {
                player.play("note3.wav");
              },
            ),
            PlayButton(
              color: Colors.green,
              play: () {
                player.play("note4.wav");
              },
            ),
            PlayButton(
              color: Colors.lightBlue,
              play: () {
                player.play("note5.wav");
              },
            ),
            PlayButton(
              color: Colors.blue,
              play: () {
                player.play("note6.wav");
              },
            ),
            PlayButton(
              color: Colors.pink,
              play: () {
                player.play("note7.wav");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  PlayButton({@required this.color, @required this.play});

  final Color color;
  final Function play;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        splashColor: Colors.white,
        elevation: 4.0,
        onPressed: play,
        color: color,
      ),
    );
  }
}
