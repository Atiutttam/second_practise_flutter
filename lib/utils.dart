

import 'package:flutter/material.dart';

InputDecoration getInputDecoration (){
  return InputDecoration(
    label: Text('Name'),
    hintText: "Enter your name....",
    prefixText: "Mr/Mrs",
    prefixIcon:Icon(Icons.verified_user),
    suffixIcon: Icon(Icons.remove_red_eye_outlined),
    border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),

    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(width: 2,color: Colors.red)
    ),);
}

