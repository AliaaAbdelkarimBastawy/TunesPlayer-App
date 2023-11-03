import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/models/TuneModel.dart';

class TuneItem extends StatelessWidget {
  final Color color;
  final String sound;
  const TuneItem({Key? key, required this.color,required this.sound}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //GestureDetector ON Expanded is not true
      //Expanded Widget can be in Row/Column, otherwise it should be on the top
      child: GestureDetector(
        onTap: ()
        {
          final player = AudioPlayer(); // Audio player// will immediately start playing
          player.play(AssetSource(sound));

        },
        child: Container(
          color: color,
          width: double.infinity,
        ),
      ),
    );
  }
}
