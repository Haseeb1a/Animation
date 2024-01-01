import 'package:flutter/material.dart';
import 'package:homeset/controller/default_textstyle_controller.dart';
import 'package:provider/provider.dart';

class DefaultTextStylepage extends StatelessWidget {
  const DefaultTextStylepage({super.key});

  @override
  Widget build(BuildContext context) {
    final alinprovider = Provider.of<DefaultTextStyleController>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(
            child: SizedBox(
              height: 150,
              child: AnimatedDefaultTextStyle(
                  child: Text('flutter',),
              
                  style: TextStyle(
                    
                      fontSize: alinprovider.fontsize, color: alinprovider.color),
                  duration: Duration(seconds: 1)),
            ),
          ),
          TextButton(
              onPressed: () {
                alinprovider.chnager();
              },
              child: Text('swith'))
        ],
      ),
    );
  }
}
