import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DefaultTextStyleController extends ChangeNotifier {
  bool selected = true;
  chnager() {
    fontsize = selected ? 90 : 60;
    color = selected ? const Color.fromARGB(255, 0, 0, 0) : Colors.blue;
    selected = !selected;
    notifyListeners();
  }

  double fontsize = 60;
  Color color = Colors.blue;
}
