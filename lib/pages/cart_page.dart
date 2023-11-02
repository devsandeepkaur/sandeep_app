import 'package:flutter/material.dart';
import 'package:sandeep_app/utils/home-widgets/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MyTheme.CreamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
    
    
    );
  }
}