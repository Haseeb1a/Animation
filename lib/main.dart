import 'package:flutter/material.dart';
import 'package:homeset/controller/align_controller.dart';
import 'package:homeset/controller/animation_cotainer_controller.dart';
import 'package:homeset/controller/animationcrossfade_controller.dart';
import 'package:homeset/controller/default_textstyle_controller.dart';
import 'package:homeset/views/animated_alin/animated_aline.dart';
import 'package:homeset/views/animated_container/animated_container.dart';
import 'package:homeset/views/animated_icons/animated_icons.dart';
import 'package:homeset/views/animationcrossfade/animationcrossfade.dart';
import 'package:homeset/views/default_textstyle/default_textstyle.dart';
import 'package:homeset/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>AnimatedAligncontroller()),
        ChangeNotifierProvider(create: (context)=>AnimationContainerController()),
        ChangeNotifierProvider(create: (context)=>animationcrossfadecontroller()),
        ChangeNotifierProvider(create: (context)=>DefaultTextStyleController()),
      
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Animatedicons(),
      ),
    );
  }
}


