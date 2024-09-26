import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/const/colors.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    radioTheme: const RadioThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
    primaryColor: black,
    scaffoldBackgroundColor: white,
    textTheme: GoogleFonts.openSansTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: white,
      elevation: 0,
      titleTextStyle: GoogleFonts.playfairDisplay(fontSize: 18, color: black),
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provide us light and dark theme
  // we just modify it as our need
  var baseTheme = ThemeData(brightness: Brightness.dark);
  return ThemeData.dark().copyWith(
    primaryColor: white,
    textTheme: GoogleFonts.outfitTextTheme(baseTheme.textTheme),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.outfit(fontSize: 18),
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
