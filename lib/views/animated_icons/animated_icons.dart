import 'package:flutter/material.dart';

class Animatedicons extends StatefulWidget {
  Animatedicons({Key? key}) : super(key: key);

  @override
  State<Animatedicons> createState() => _AnimatediconsState();
}

class _AnimatediconsState extends State<Animatedicons>
    with TickerProviderStateMixin {

// it have the icon and progress

  bool isPlay = false;
  late AnimationController _controller;
  
  @override
  void initState() {
    // TODO: implement initState
    
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
        super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child: GestureDetector(
              onTap: () {
                if (isPlay == false) {
                  _controller.forward();
                  isPlay = true;
                } else {
                  _controller.reverse();
                  isPlay = false;
                }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
