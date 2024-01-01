import 'package:flutter/material.dart';
import 'package:homeset/controller/animationcrossfade_controller.dart';
import 'package:provider/provider.dart';

class Animationcrossfadepage extends StatelessWidget {
  const Animationcrossfadepage({super.key});

  @override
  Widget build(BuildContext context) {
    // iamge swither as smothly
    final alinprovider = Provider.of<animationcrossfadecontroller>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                alinprovider.chnager();
              },
              child: Text('switch')),
          AnimatedCrossFade(
            firstChild: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKZhSeUQ9i1h-7Mkp5x4igIdW4kVS3Eo5PeZJS5nxvbZB2HLIVYXthSyrTqyMyGcjrzPw&usqp=CAU',
                width: double.infinity,),
            secondChild: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrVL_oki9gmSwFyqWsswOgCvOs7F9V1lAz9KAzd3rQP9GRC2WMcYa0GveACyPnsDMAr58&usqp=CAU',width: double.infinity,),
            crossFadeState: alinprovider.selected
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 700),
          )
        ],
      ),
    );
  }
}
