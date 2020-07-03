import 'dart:ui';
import 'package:flutter/material.dart';

class AppColor{
  static const int _appPrimaryValue = 0xff090909;
  static const MaterialColor appColor = MaterialColor(
    _appPrimaryValue,
    <int, Color>{
      50: Color(_appPrimaryValue),
      100: Color(0xff1b1a1f),
      200: Color(_appPrimaryValue),
      300: Color(_appPrimaryValue),
      400: Color(_appPrimaryValue),
      500: Color(_appPrimaryValue),
      600: Color(_appPrimaryValue),
      700: Color(_appPrimaryValue),
      800: Color(_appPrimaryValue),
      900: Color(_appPrimaryValue),
    },
  );

}
