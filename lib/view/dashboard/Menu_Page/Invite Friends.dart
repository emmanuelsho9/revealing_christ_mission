import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../constantWidget/screenUtiContant.dart';
import '../bottomNav/bottonNav.dart';
import '../menu/navigationBar.dart';


class Invite extends StatelessWidget {
  Invite({Key? key}) : super(key: key);


  final player = AudioPlayer();

  playNow() async {
    await player.play(AssetSource
      ("message_one.aac"));
  }


  @override
  Widget build(BuildContext context) {
    return screenUtilConstant(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/img_1.png", width: 87,height: 81,),
        ],
        elevation: 0.5,
      ),
      drawer:const Drawer(
        backgroundColor:  Color(0xFFBF843B),
        child: navigationBar(),
      ), backgroundColor: Colors.white,
      Cbody: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Coming Soon...")
          ],
        ),
      ),
    );
  }
}



