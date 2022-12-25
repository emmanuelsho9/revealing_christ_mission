import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputFieldLogin extends StatelessWidget {
  InputFieldLogin({
    Key? key, this.icon, this.IcononPressed, this.controller,
    required this.hint, required this.obscureText, required this.keyboardType
  }) : super(key: key);

  IconData? icon;
  void Function()? IcononPressed;
  TextEditingController? controller;
  String hint;
  bool obscureText= false;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 66,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 21.0, right: 21, top: 8, bottom: 8),
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            keyboardType: keyboardType,
            style: const TextStyle(
                color: Colors.grey
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                suffixIcon: IconButton(onPressed: IcononPressed, icon: Icon(icon))
            ),
          ),
        ));
  }
}
