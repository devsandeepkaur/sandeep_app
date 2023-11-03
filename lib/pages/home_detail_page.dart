import 'package:flutter/material.dart';
import 'package:sandeep_app/models/catalog.dart';
import 'package:sandeep_app/utils/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
     backgroundColor: context.canvasColor,
      
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red600.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p16().px16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.textStyle(context.theme.textTheme.headlineMedium)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "Stet sit sed gubergren dolores ut vero, et dolor et at gubergren vero dolores, dolor dolores lorem magna labore, ea accusam aliquyam et at. Sanctus justo sed diam sadipscing gubergren erat amet. Stet et amet sea kasd ut clita labore sea et. Dolor sea eos accusam tempor kasd, est lorem."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
