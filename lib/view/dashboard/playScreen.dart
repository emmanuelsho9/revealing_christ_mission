import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revealing_christ_mission/view/Login/SingUp.dart';

import '../../constantWidget/InputFieldLogin.dart';
import 'ListofDashBoard/ListUI.dart';
import 'bottomNav/bottonNav.dart';
import 'menu/navigationBar.dart';
import '../../constantWidget/screenUtiContant.dart';

class PlayStation extends StatelessWidget {
   PlayStation({Key? key}) : super(key: key);


   final player = AudioPlayer();

   playNow() async {
    await player.play(AssetSource
      ("message_one.aac"));
  }


  @override
  Widget build(BuildContext context) {
    return screenUtilConstant(
      bottomNavigationBar: bottonNav(),
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
      ),
      backgroundColor: Colors.white,
      Cbody: ListUI(),
    );
  }
}



