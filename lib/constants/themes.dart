import 'package:flutter/material.dart';

class AppThemes {
  Color colorWhite = Colors.white;
  Color colorGreen = Colors.green;
  Color colorBlack = Colors.black;
  Color colorGrey = Colors.grey;
  TextStyle mainTextStyle = const TextStyle(
      color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400);
  TextStyle greenTextStyle = const TextStyle(
      color: Color.fromRGBO(24, 173, 0, 1),
      fontSize: 14,
      fontWeight: FontWeight.w700);
  TextStyle blackTextStyle = const TextStyle(
      color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700);
  LinearGradient mainGradient = LinearGradient(
    colors: [
      Colors.grey.shade600,
      Colors.grey.shade800,
    ],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(1.0, 0.0),
    stops: const [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
}
