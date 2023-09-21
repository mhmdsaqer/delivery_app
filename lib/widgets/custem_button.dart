import 'package:flutter/material.dart';

import '../screens/tips/tips_screen.dart';

MaterialButton CustemButton(
    {required BuildContext context,
    required Color btnColor,
    required Color textColor,
    required String textString,
    required Function fun}) {
  return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      color: btnColor,
      child: Text(
        textString,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
      ),
      onPressed: () {
        fun();
      });
}
