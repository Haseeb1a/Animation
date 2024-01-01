import 'package:flutter/material.dart';

class animationcrossfadecontroller extends ChangeNotifier {
   bool selected = true;
  chnager() {
    selected = !selected;
    notifyListeners();
  }
}