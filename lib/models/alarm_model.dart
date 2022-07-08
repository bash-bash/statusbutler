import 'package:flutter/material.dart';

class Alarm {
  int id;
  String description;
  Color color;
  bool hovered = false;

  Alarm({
    required this.id,
    required this.description,
    required this.color,
  });
}
