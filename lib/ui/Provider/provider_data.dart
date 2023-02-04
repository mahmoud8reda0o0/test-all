import 'package:flutter/material.dart';

class Provider_data extends ChangeNotifier{
  int index =0;
  int age =0;
  String name = 'no data';
  List<String> games = ['elden ring','GTA cat','Ragnarok','fortnight'];
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}