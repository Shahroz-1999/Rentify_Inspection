import 'package:flutter/material.dart';

const String DEFAULT_FONT = "Montserrat";

const ORANGE_COLOR = Color(0xFFFCA901);
const CREAM_COLOR = Color.fromRGBO(234, 243, 234, 1);
const GREY_COLOUR = Color.fromRGBO(22, 121, 25, 1.0);



// Deals with all
TextTheme _TextTheme(TextTheme base) {
  return base.copyWith(
      headline1: base.headline1!.copyWith(
          fontFamily: 'Montserrat', fontSize: 24, color: ORANGE_COLOR, fontWeight: FontWeight.w900),
    headline2: base.headline2!.copyWith(
        fontFamily: 'Montserrat', fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
    headline3: base.headline4!.copyWith(
        fontFamily: 'Montserrat', fontSize: 16, color: ORANGE_COLOR, fontWeight: FontWeight.w500),
    headline4: base.headline4!.copyWith(
          fontFamily: 'Montserrat', fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
    headline5: base.headline5!.copyWith(
        fontFamily: 'Montserrat', fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),

    bodyText1: base.bodyText1!.copyWith(
        fontFamily: 'Montserrat', fontSize: 11, color: Colors.black, fontWeight: FontWeight.w300),

    subtitle1: base.subtitle1!.copyWith(
        fontFamily: 'Montserrat', fontSize: 11, color: ORANGE_COLOR, fontWeight: FontWeight.w300),
    subtitle2: base.subtitle2!.copyWith(
        fontFamily: 'Montserrat', fontSize: 11, color: Colors.black, fontWeight: FontWeight.w300),

  );

}
BottomNavigationBarThemeData _navigationBarTheme(BottomNavigationBarThemeData base){
  return base.copyWith(
    backgroundColor: ORANGE_COLOR,
    unselectedIconTheme: IconThemeData(
      color: Colors.white,
      size: 15
    ),
    selectedIconTheme: IconThemeData(
      color: Colors.white,
      size: 25
    ),

    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,

  );
}

ThemeData appTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _TextTheme(base.textTheme),
      appBarTheme: _appBarTheme(base.appBarTheme),
      bottomNavigationBarTheme: _navigationBarTheme(base.bottomNavigationBarTheme),
      toggleButtonsTheme: _toggleButtonsTheme(base.toggleButtonsTheme),
      backgroundColor: ORANGE_COLOR,
      primaryColor: CREAM_COLOR

  );
}

AppBarTheme _appBarTheme(AppBarTheme base) {
  return base.copyWith(backgroundColor: ORANGE_COLOR);
}
ToggleButtonsThemeData _toggleButtonsTheme (ToggleButtonsThemeData base){
  return base.copyWith(
    color: ORANGE_COLOR,
    selectedColor: ORANGE_COLOR,
    
  );
}