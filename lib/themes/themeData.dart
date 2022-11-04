import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
              headline1:
                  GoogleFonts.concertOne(color: Colors.black, fontSize: 30),
              headline2: GoogleFonts.overpass(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
              headline3: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              bodyText1: const TextStyle(
                  color: Color.fromARGB(255, 42, 42, 42), fontSize: 18),
              bodyText2: const TextStyle(
                  color: Color.fromARGB(255, 42, 42, 42), fontSize: 14.5)))
      .copyWith(

          //primaryColor: Colors.purple,
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.black),
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              systemOverlayStyle: SystemUiOverlayStyle.light),
          iconTheme: const IconThemeData(
            color: Colors.deepPurple,
          ));

  // Dark Theme

  static ThemeData darkTheme = ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
              headline1: GoogleFonts.signikaNegative(
                  color: Colors.white, fontSize: 30),
              headline2: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
              bodyText1: const TextStyle(color: Colors.white, fontSize: 19),
              headline3: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              bodyText2: const TextStyle(
                  color: Color.fromARGB(255, 184, 184, 184), fontSize: 14.5)))
      .copyWith(
          //primaryColor: Colors.purple,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurple));
}
