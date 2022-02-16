import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
ThemeData lightTheme(BuildContext context){
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    textTheme:Theme.of(context).textTheme.apply(
      bodyColor: kContentColorLightTheme,
        fontFamily: 'Raleway'
    ),
    colorScheme: ColorScheme.light().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondryColor,
      error: kErrorColor,
    )
  );
}
ThemeData darkTheme(BuildContext context){
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: appBarTheme,
    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: kContentColorDarkTheme,
      fontFamily: 'Raleway',
    ),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondryColor,
      error: kErrorColor,
    )
  );
}
final appBarTheme=AppBarTheme(
  centerTitle: false,
  elevation: 0,
);