import 'package:flutter/material.dart';

class AppTextStyles{
  static const header = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: 22,
    color: Colors.black
  );

  static const strong = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Colors.black
  );

  static const floatingButton = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Color.fromRGBO(33, 0, 93, 1)
  );

  static const white = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Color.fromRGBO(255, 255, 255, 1)
  );
}