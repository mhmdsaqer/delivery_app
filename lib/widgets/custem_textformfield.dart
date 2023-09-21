import 'package:flutter/material.dart';

class CustemTextFormField extends StatelessWidget {
  CustemTextFormField(
      {@required this.controller,
      @required this.hintTxt,
      @required this.inputType});
  String? hintTxt;
  TextInputType? inputType;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (hintTxt == 'Email') {
          if (value!.isEmpty || !value.contains('@')) {
            return 'Please enter a valid Email';
          }
        } else if (hintTxt == 'Password') {
          if (value!.isEmpty || value.length < 7) {
            return 'Please enter a good Pssword';
          }
        } else {
          if (value!.isEmpty || value.length < 7) {
            return 'This field is required';
          }
        }
      },
      keyboardType: inputType,
      controller: controller,
      obscureText: hintTxt == 'Password' ? true : false,
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
