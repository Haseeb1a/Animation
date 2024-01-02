import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CostumCliperss extends StatelessWidget {
  const CostumCliperss({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(height: 500,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              child:  Center(
            child: SizedBox(
              
              height: 200,
              width: double.infinity,
              child:Lottie.asset('assets/Animation - 1704190161204.json',fit: BoxFit.cover),
              
            ),
          ),
              ),
            ),
          ),
          // Center(
          //   child: SizedBox(
          //     height: 200,
          //     width: double.infinity,
          //     child:Lottie.asset('assets/Animation - 1704190161204.json',fit: BoxFit.cover),
              
          //   ),
          // ),
          

        ],
      ),
    );
  }
}