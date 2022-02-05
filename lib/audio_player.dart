import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerView extends StatefulWidget {
  const AudioPlayerView({Key key}) : super(key: key);

  @override
  _AudioPlayerViewState createState() => _AudioPlayerViewState();
}

class _AudioPlayerViewState extends State<AudioPlayerView> {
  String durasi = '00:00:00';
  AudioPlayer audioPlayer;

  _AudioPlayerViewState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('Play'),
              onPressed: () {
                playSound('http://23.237.126.42/0st');
              },
            ),
            RaisedButton(
              child: Text('Pause'),
              onPressed: () {
                pauseSound();
              },
            ),
            RaisedButton(
              child: Text('Stop'),
              onPressed: () {
                stopSound();
              },
            ),
            RaisedButton(
              child: Text('Resume'),
              onPressed: () {
                resumeSound();
              },
            ),
            Text(
              durasi,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
