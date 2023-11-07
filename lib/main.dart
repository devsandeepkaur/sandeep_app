import "package:flutter/material.dart";
import "package:sandeep_app/pages/cart_page.dart";
import "package:sandeep_app/pages/login.dart";
import "package:sandeep_app/utils/routes.dart";

import "home_page.dart";
import "utils/widgets/theme.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      themeMode: ThemeMode.light, 
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,

      routes: {
        "/":(context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context) => const LoginPage(),
        MyRoutes.cartRoute:(context) => const CartPage(),
      },
    );
  }
}
