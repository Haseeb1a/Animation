import 'package:flutter/material.dart';
import 'package:homeset/controller/animatedswithcer_controller.dart';
import 'package:provider/provider.dart';

class AnimatedSWithcers extends StatefulWidget {
  const AnimatedSWithcers({super.key});

  @override
  State<AnimatedSWithcers> createState() => _AnimatedSWithcersState();
}

class _AnimatedSWithcersState extends State<AnimatedSWithcers> {
  @override
  Widget build(BuildContext context) {
    final alinprovider = Provider.of<AnimatedSWithcerController>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                alinprovider.count.toString(),
                key: ValueKey(alinprovider.count),
                style: TextStyle(

                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
          ),
          IconButton(
            // bac: Colors.black,
              onPressed: () {
                alinprovider.increment();
              },
              icon: Icon(Icons.add,color: const Color.fromARGB(255, 0, 0, 0),))
        ],
      ),
    );
  }
}
