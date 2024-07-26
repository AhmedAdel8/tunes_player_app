import 'package:flutter/material.dart';
import 'package:flutter_application_8/models/tune_model.dart';
import 'package:flutter_application_8/widgets/tune_item.dart';

class Tune extends StatelessWidget {
  const Tune({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfff44336), sound: "note1.wav"),
    TuneModel(color: Color(0xfff89800), sound: "note2.wav"),
    TuneModel(color: Color(0xfffeeb3b), sound: "note3.wav"),
    TuneModel(color: Color(0xff4caf50), sound: "note4.wav"),
    TuneModel(color: Color(0xff2f9688), sound: "note5.wav"),
    TuneModel(color: Color(0xff2896f3), sound: "note6.wav"),
    TuneModel(color: Color(0xff9c27b0), sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        centerTitle: true,
        title: const Text("Flutter Tune"),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
  /*List<TuneItem>getTuneItems(){
    List<TuneItem> items=[];

    for (var color in tuneColors) {
      items.add(TuneItem(color: color));
      
    }
    return items;
  }
  */
}
