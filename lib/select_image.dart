import 'package:flutter/material.dart';

class SelectImageController {
  final imagemSelectedNotifier = ValueNotifier<int>(0);
  int get imageSelected => imagemSelectedNotifier.value;
  set imageSelected(int index) => imagemSelectedNotifier.value = index;
}