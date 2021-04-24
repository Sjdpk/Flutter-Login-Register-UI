import 'package:flutter/material.dart';

Widget roundedButton({String title, Function onTap, double sWidth}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(bottom: 40),
      alignment: Alignment.center,
      height: 50,
      width: sWidth / 1.2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black45,
              Colors.transparent,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white10,
              offset: Offset(10.0, 8.0),
            ),
          ]),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
        ),
      ),
    ),
  );
}
