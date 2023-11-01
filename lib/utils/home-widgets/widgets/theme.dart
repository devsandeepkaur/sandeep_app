import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
 

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
       brightness:  Brightness.dark,
  );
   
   static Color CreamColor = Color(0xfff5f5f5);
   static Color darkBluishColor = Color(0xff403b58);

     



}
