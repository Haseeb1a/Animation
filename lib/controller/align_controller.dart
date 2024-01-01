import 'package:flutter/material.dart';

class AnimatedAligncontroller extends ChangeNotifier {
  bool selected = true;
  chnager() {
    selected = !selected;
    notifyListeners();
  }
}
