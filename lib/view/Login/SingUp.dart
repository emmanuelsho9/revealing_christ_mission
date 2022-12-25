import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:revealing_christ_mission/view/Login/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../constantWidget/InputFieldLogin.dart';
import '../../constantWidget/screenUtiContant.dart';
import '../dashboard/playScreen.dart';

class SignUp extends StatefulWidget {
   SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   bool visible = true;
   bool _isLoading = false;


   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();
   TextEditingController _fullNameController = TextEditingController();

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
              const Text("Sign up", style: TextStyle(
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
              InputFieldLogin(keyboardType: TextInputType.emailAddress,hint: "Email", icon: Icons.email, obscureText: false, controller: _emailController),
              const SizedBox(height: 31,),
              InputFieldLogin(keyboardType: TextInputType.name,obscureText: false,hint: "Full name", icon: Icons.account_circle_rounded, controller: _fullNameController),
              const SizedBox(height: 31,),
              InputFieldLogin(IcononPressed: () {
                visible==true?visible=false:visible=true;
                setState(() {

                });
              },keyboardType: TextInputType.name,obscureText: visible,hint: "Password",  icon: visible==true?Icons.visibility_off:Icons.visibility, controller: _passwordController),

              const SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _isLoading==false?InkWell(
                    onTap: () async {
                      try{
                        _isLoading=true;
                        setState(() {

                        });
                        if(_emailController.text.isEmpty&&_fullNameController.text.isEmpty&&_passwordController.text.isEmpty){
                          Get.snackbar("Input Error", "Check what your input");
                          _isLoading=false;
                          setState(() {

                          });

                        }
                        var login = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
                        var registerUser = await FirebaseFirestore.instance.collection("Revealing_Christ").add({
                          "Email":_emailController.text.trim(),
                          "Full_Name":_fullNameController.text.trim(),
                          "Password":_passwordController.text.trim(),
                        });
                        Get.offAll(PlayStation());

                      }catch (e){
                        Get.snackbar("Sign Up Issues", "$e".replaceAll("firebase_auth", "User"));
                        _isLoading=false;
                        setState(() {

                        });
                      }
                    },
                    child: Container(
                      height: 48,
                      width: 136,
                      decoration: BoxDecoration(
                          color: const Color(0xFFBF843B),
                          borderRadius: BorderRadius.circular(70)
                      ),
                      child: const Center(child: Text("SIGNUP", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                      ),)),
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

                ],
              ),
              const SizedBox(height: 48,),
              InkWell(
                onTap: () {
                  Get.to(Login());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("You have an account?", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16
                    ),),
                     SizedBox(width: 11,),
                    Text("Login", style: TextStyle(
                      color: Color(0xFFBF843B), fontWeight: FontWeight.w600, fontSize: 16
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

