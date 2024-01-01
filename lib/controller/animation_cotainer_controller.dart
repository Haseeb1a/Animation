import 'package:flutter/material.dart';

class AnimationContainerController extends ChangeNotifier {
  bool selected = true;
  chnager() {
    selected = !selected;
    notifyListeners();
  }
}
