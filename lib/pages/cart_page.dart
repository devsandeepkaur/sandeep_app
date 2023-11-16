import 'package:flutter/material.dart';
import 'package:sandeep_app/models/cart.dart';
import 'package:sandeep_app/utils/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(children: [
        _CartList().p32().expand(),
         
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$${_cart.totalPrice}"
          .text
          .xl5
          .color(context.theme.secondaryHeaderColor)
          .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet".text.make(),
              ));
            },
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(context.),
            // ),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}
 
class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index]!.name.text.make(),
      ),
    );
  }
}
