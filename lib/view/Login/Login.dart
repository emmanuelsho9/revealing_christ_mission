import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:revealing_christ_mission/view/Login/SingUp.dart';

import '../../constantWidget/InputFieldLogin.dart';
import '../../constantWidget/screenUtiContant.dart';
import '../dashboard/playScreen.dart';
import 'forgetPassword.dart';

class Login extends StatefulWidget {
   Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visible = true;
  bool _isLoading = false;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();


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
              const Text("Login", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 70
              ),),
              const SizedBox(height: 16,),
              const Text("to start playing", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),),
              const SizedBox(height: 89,),
              InputFieldLogin(keyboardType: TextInputType.emailAddress,obscureText: false,hint: "Email", icon: Icons.email, controller: _emailController),
              const SizedBox(height: 31,),
              InputFieldLogin(IcononPressed: () {
                visible==true?visible=false:visible=true;
                setState(() {

                });
              },keyboardType: TextInputType.name,obscureText: visible,hint: "Password",  icon: visible==true?Icons.visibility_off:Icons.visibility, controller: _passwordController),
              const SizedBox(height: 26,),
              _isLoading==false? InkWell(
                onTap: () async {
                  try{
                    _isLoading=true;
                    setState(() {

                    });
                    if(_emailController.text.isEmpty&&_passwordController.text.isEmpty){
                      Get.snackbar("Input Error", "Check what your input");
                      _isLoading=false;
                      setState(() {

                      });
                    }
                    var login = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
                    Get.offAll(PlayStation());

                  }catch (e){
                    print(e);
                    Get.snackbar("Sign Up Issues", "$e".replaceAll("firebase_auth", "User"));
                    _isLoading=false;
                    setState(() {

                    });
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 48,
                      width: 136,
                      decoration: BoxDecoration(
                          color: const Color(0xFFBF843B),
                          borderRadius: BorderRadius.circular(70)
                      ),
                      child: const Center(child: Text("LOGIN", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ],
                ),
              ):
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(
                    backgroundColor: Color(0xFFBF843B),
                    color: Colors.white,
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
              const SizedBox(height: 26,),
              InkWell(
                onTap: () {
                Get.to(forgetPassword());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Forget Password", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16
                    ),),
                  ],
                ),
              ),
              const SizedBox(height: 26,),

            ],
          ),
        ),
      ),
    );
  }
}

