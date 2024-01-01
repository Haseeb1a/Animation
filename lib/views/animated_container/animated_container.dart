import 'package:flutter/material.dart';
import 'package:homeset/controller/animation_cotainer_controller.dart';
import 'package:provider/provider.dart';

class AnimatedContainers extends StatelessWidget {
  const AnimatedContainers({super.key});

  @override
  Widget build(BuildContext context) {
    // animated the container
    // cananimated the width,height,duraion,color,alignment
    
    final alinprovider = Provider.of<AnimationContainerController>(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          alinprovider.chnager();
        },
        child: Center(
          child: AnimatedContainer(
            width: alinprovider.selected ? 200 : 100,
            height: alinprovider.selected ? 100 : 200,
            duration: Duration(seconds: 2),
            color: alinprovider.selected?Colors.black:Colors.blue,
            alignment: alinprovider.selected?Alignment.center:Alignment.topCenter,
            
            child: SizedBox(
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMIiQv9Ha3hkL000USPjDfrSoJmVc9_Rl8DQ&usqp=CAU')) ,
          ),
        ),
      ),
    );
  }
}
