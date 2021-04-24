import 'package:flutter/material.dart';

Widget roundedField(
    {String hint,
    IconData icon,
    icon1,
    bool obscureText = false,
    Function ontap}) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 50,
    child: TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            icon1,
            color: Colors.white,
          ),
          onPressed: ontap,
        ),
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.white,
        ),

        // hintText: 'example@gmail.com',
        // hintStyle: TextStyle(
        //   color: Colors.white24,
        // ),
      ),
    ),
  );
}
