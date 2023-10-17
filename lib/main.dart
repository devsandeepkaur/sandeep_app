import "package:flutter/material.dart";
import "package:sandeep_app/pages/login.dart";

import "home_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/h": (_) => HomePage(),
        "/":(context) => LoginPage()
      },
    );
  }
}
