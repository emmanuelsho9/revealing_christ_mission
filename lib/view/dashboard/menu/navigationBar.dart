import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:revealing_christ_mission/view/Login/Login.dart';

import '../Menu_Page/About.dart';
import '../Menu_Page/Invite Friends.dart';
import '../Menu_Page/contact.dart';
import '../playScreen.dart';

class navigationBar extends StatelessWidget {
  const navigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 66.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 268,),
          InkWell(
            onTap: () {
             Get.to(PlayStation());
            },
            child: Row(
              children: const [
                Icon(Icons.home, color: Colors.white,),
                SizedBox(height: 8,),
                InkWell(child: Text("Home", style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          const SizedBox(height: 52,),

          InkWell(
            onTap: () {
              Get.to(About());
            },
            child: Row(
              children: const [
                Icon(Icons.info, color: Colors.white,),
                SizedBox(height: 8,),
                InkWell(child: Text("About", style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          const SizedBox(height: 52,),
          InkWell(
            onTap: () {
              Get.to(Contact());

            },
            child: Row(
              children: const [
                Icon(Icons.person_pin, color: Colors.white,),
                SizedBox(height: 8,),
                Text("Contact", style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          const SizedBox(height: 52,),
          InkWell(
            onTap: () {
              Get.to(Invite());

            },
            child: Row(
              children: const [
                Icon(Icons.share, color: Colors.white,),
                SizedBox(height: 8,),
                Text("Invite Friends", style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          const SizedBox(height: 52,),

          InkWell(
            onTap: () async {
              try{
                var signOut = await FirebaseAuth.instance.signOut();
                Get.offAll(Login());
              }catch (e){
                Get.snackbar("SignOut Up Issues", "$e");

              }
            },
            child: Row(
              children:  const [
                Icon(Icons.logout, color: Colors.white,),
                Text("LogOut", style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
