import 'package:flutter/material.dart';

class AnimatedListPage extends StatelessWidget {
  const AnimatedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = [];
    final GlobalKey<AnimatedListState> _key = GlobalKey();

    void additeam() {
      item.insert(0, "item${item.length + 1}");
      _key.currentState!.insertItem(0, duration: Duration(seconds: 1));
    }

    void removeItem(int index) {
      // item.re
      _key.currentState!.removeItem(index, (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text('Deleted',style: TextStyle(),),
              
            ),
          ),
        );
      });
    }

    return Scaffold();
  }
}
