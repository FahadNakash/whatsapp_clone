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
        fontFamily: 'Raleway',
    ),
    colorScheme: ColorScheme.light().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.3),
      selectedItemColor: kContentColorLightTheme,
      selectedIconTheme: IconThemeData(
        color: kPrimaryColor
      )
    ) 
  );
}
ThemeData darkTheme(BuildContext context){
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor:kContentColorLightTheme,
    appBarTheme: appBarTheme,
    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: kContentColorDarkTheme,
      fontFamily: 'Raleway',
    ),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: kContentColorDarkTheme,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.5),
      selectedIconTheme: IconThemeData(
        color: kPrimaryColor
      )
    )
  );
}
final appBarTheme=AppBarTheme(
  color: kPrimaryColor,
  centerTitle: false,
  elevation: 0,
);