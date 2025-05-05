import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context, String message,Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message,style: TextStyle(fontSize:15,color: Colors.black),),
      backgroundColor: color,
      duration: Duration(milliseconds: 1000),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
