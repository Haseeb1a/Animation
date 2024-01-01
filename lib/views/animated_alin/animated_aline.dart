import 'package:flutter/material.dart';
import 'package:homeset/controller/align_controller.dart';
import 'package:provider/provider.dart';

class animatedAline extends StatelessWidget {
  animatedAline({super.key});

  @override
  Widget build(BuildContext context) {
    // Swich the alignment
    final alinprovider = Provider.of<AnimatedAligncontroller>(context);
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            alinprovider.chnager();
          },
          child: Container(
            height: 250,
            width: double.infinity,
            child: AnimatedAlign(
                curve: Curves.fastOutSlowIn,
                duration: Duration(seconds: 1),
                //  align is here 
                alignment: alinprovider.selected
                    ? Alignment.topRight
                    : Alignment.bottomLeft,
                child: ImageBox()),
          ),
        ),
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMIiQv9Ha3hkL000USPjDfrSoJmVc9_Rl8DQ&usqp=CAU'));
  }
}
