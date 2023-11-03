import 'dart:ui';

class TuneModel {
  //const constructor has to have final attributes
  final Color color;
  final String Sound;

  //const constructor improves the performance
  const TuneModel({required this.color,
    required this.Sound});
}
