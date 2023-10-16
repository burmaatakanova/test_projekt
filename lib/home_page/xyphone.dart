import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Muzyka extends StatelessWidget {
  const Muzyka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: const Text(
            ' Xylophone',
            style: TextStyle(fontSize: 27, color: Colors.amber),
          ),
        ),
      ),
      body: Column(
        children: [
          buildMethod(player),
          Expanded(
            child: Container(
              child: Material(
                color: Colors.orange,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('/notes/2.mp3'));
                  },
                  child: Container(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.yellow,
              child: InkWell(
                onTap: () {
                  player.play(AssetSource('/notes/3.mp3'));
                },
                child: Container(),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  player.play(AssetSource('/notes/5.mp3'));
                },
                child: Container(),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.teal,
              child: InkWell(
                onTap: () {
                  player.play(AssetSource('/notes/4.mp3'));
                },
                child: Container(),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  player.play(AssetSource('/notes/6.mp3'));
                },
                child: Container(),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.purple,
              child: InkWell(
                onTap: () {
                  player.play(AssetSource('/notes/099.mp3'));
                },
                child: Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildMethod(AudioPlayer player) {
    return Expanded(
      child: Container(
        child: Material(
          color: Colors.red,
          child: InkWell(
            onTap: () {
              player.play(AssetSource('/notes/1.mp3'));
            },
          ),
        ),
      ),
    );
  }
}
