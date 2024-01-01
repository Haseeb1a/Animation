import 'package:flutter/material.dart';

class AnimatedSWithcerController extends ChangeNotifier {
  int count = 0;

  increment() {
    count = count + 1;
    notifyListeners();
  }
}
