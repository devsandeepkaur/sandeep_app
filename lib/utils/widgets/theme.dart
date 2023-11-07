import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        secondaryHeaderColor: darkBluishColor,
        canvasColor: CreamColor,
        primaryColorLight: darkBluishColor,
        textTheme: const  TextTheme(
           headlineMedium: TextStyle(color: Colors.black)

        ),
        buttonTheme: ButtonThemeData(
          buttonColor: darkBluishColor,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        secondaryHeaderColor: Colors.white,
        primaryColorLight: lightBluishColor,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
        buttonTheme: ButtonThemeData(
          buttonColor: lightBluishColor,
       
        ),
        textTheme:
            const TextTheme(headlineMedium: TextStyle(color: Colors.white)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              lightBluishColor,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
          ),
        ),

        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
      );

  // ignore: non_constant_identifier_names
  static Color CreamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
