import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/models/TuneModel.dart';
import '../Components/TuneItem.dart';

class TunesView extends StatelessWidget {
  //const constructor improves the performance
  const TunesView({Key? key}) : super(key: key);
   final List<TuneModel> TunesList = const [
     TuneModel(color: Colors.red, Sound: "note1.wav"),
     TuneModel(color: Colors.orange, Sound: "note2.wav"),
     TuneModel(color: Colors.yellowAccent, Sound: "note3.wav"),
     TuneModel(color: Colors.green, Sound: "note4.wav"),
     TuneModel(color: Colors.teal, Sound: "note5.wav"),
     TuneModel(color: Colors.blue, Sound: "note6.wav"),
     TuneModel(color: Colors.purple, Sound: "note7.wav"),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF2A3841),
        title: Text("Flutter Tune",
        style: TextStyle(color: Colors.white),),),
      body:  Column(
        //The list must contains all the data you want to
        // pass to the item
        //Map returns a collection of TuneItem, so Brackets of children should be removed
        children: TunesList.map((e)=>TuneItem(color: e.color, sound: e.Sound)).toList(),
      ),
    );
  }

}

