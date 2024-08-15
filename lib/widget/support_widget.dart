import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold
    );
  }

  static TextStyle lightTextFieldStyle(){
    return TextStyle(
        color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w500
    );
  }
  static TextStyle semiBoldTextFieldStyle(){
    return TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold
    );
  }
}