import 'package:flutter/material.dart';

const primaryColor = Color(0xff1E90FF);
const secondaryColor = Colors.orangeAccent;
const headingTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w700);
const subHeadingTextSTyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.w700);
TextStyle bodyTextStyle = const TextStyle(fontSize: 25);
TextStyle bodyTextStyle2 = const TextStyle(fontSize: 20);

final dark = ThemeData(
  scaffoldBackgroundColor: const Color(0xff424242),
  colorScheme: ColorScheme(
      primary: primaryColor,
      primaryVariant: Colors.blue,
      secondary: secondaryColor,
      surface: primaryColor,
      background: Colors.blue.shade300,
      error: Colors.red,
      onBackground: Colors.blue.shade300,
      onError: Colors.red,
      onPrimary: primaryColor,
      onSecondary: secondaryColor,
      onSurface: primaryColor,
      secondaryVariant: Colors.amberAccent,
      brightness: Brightness.light),
  textTheme: TextTheme(
      headline1: headingTextStyle.copyWith(color: Colors.white),
      headline5: subHeadingTextSTyle.copyWith(color: Colors.white),
      bodyText1: bodyTextStyle,
      bodyText2: bodyTextStyle2.copyWith(color: Colors.white)),
);

final bright = ThemeData(
  colorScheme: ColorScheme(
      primary: primaryColor,
      primaryVariant: Colors.blue,
      secondary: secondaryColor,
      surface: primaryColor,
      background: Colors.blue.shade300,
      error: Colors.red,
      onBackground: Colors.blue.shade300,
      onError: Colors.red,
      onPrimary: primaryColor,
      onSecondary: secondaryColor,
      onSurface: primaryColor,
      secondaryVariant: Colors.amberAccent,
      brightness: Brightness.light),
  textTheme: TextTheme(
      headline1: headingTextStyle.copyWith(color: Colors.black),
      headline5: subHeadingTextSTyle.copyWith(color: Colors.black),
      bodyText1: bodyTextStyle.copyWith(color: Colors.black),
      bodyText2: bodyTextStyle2.copyWith(color: Colors.black)),
);
