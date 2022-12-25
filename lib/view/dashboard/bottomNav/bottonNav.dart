import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottonNav extends StatefulWidget {
   bottonNav({
    Key? key,
  }) : super(key: key);

  @override
  State<bottonNav> createState() => _bottonNavState();
}

class _bottonNavState extends State<bottonNav> {
  final player = AudioPlayer();

  playNow() async {
    await player.play(AssetSource
      ("message_one.aac"));
  }



   bool visiblity = false;

   @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      decoration: const BoxDecoration(
          color: Color(0xFFBF843B),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 100,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  visiblity==false?visiblity=true:visiblity=false;
                  setState(() {
                  });

                  if(visiblity==true){
                    playNow();

                  }else{
                    player.pause();

                  }


                  print(visiblity);
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(300),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Center(child: visiblity==false?const
                      Icon(Icons.pause, size: 50,
                        color: Color(0xFFBF843B),)
                          : const Icon(
                        Icons. play_arrow, size: 50,
                        color: Color(0xFFBF843B),
                      ),

                      )],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 100,)
        ],
      ),
    );
  }
}
