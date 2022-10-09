import 'package:flutter/material.dart';

class TBRTheme {
  TBRTheme._();

  static get primaryTheme => ThemeData(
      primaryColor: Colors.blue,
      primaryColorDark: Colors.blue,
      primaryColorLight: Colors.blue,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.purple,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
      ));
}
