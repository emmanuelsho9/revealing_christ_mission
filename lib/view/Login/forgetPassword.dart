import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revealing_christ_mission/view/Login/SingUp.dart';

import '../../constantWidget/InputFieldLogin.dart';
import '../../constantWidget/screenUtiContant.dart';

class forgetPassword extends StatelessWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return screenUtilConstant(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        backgroundColor: const Color(0xFF022E40),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF022E40),
      Cbody: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0, right: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
               SizedBox(height: MediaQuery.of(context).size.height/117+117,),

              const Text("Recover", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 70
              ),),
              const SizedBox(height: 16,),
              const Text("Password", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
              const SizedBox(height: 23,),
              InputFieldLogin(obscureText: false,hint: "Email", icon: Icons.email, keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 136,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBF843B),
                      borderRadius: BorderRadius.circular(70)
                    ),
                    child: const Center(child: Text("SUBMIT", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),)),
                  ),
                ],
              ),
              const SizedBox(height: 48,),
              InkWell(
                onTap: () {
                  Get.to(SignUp());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don`t have an account?", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16
                    ),),
                     SizedBox(width: 11,),
                    Text("Signup", style: TextStyle(
                      color: Color(0xFFBF843B), fontWeight: FontWeight.w600, fontSize: 16
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

