import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sandeep_app/models/catalog.dart';
import 'package:sandeep_app/utils/home-widgets/catalog-header.dart';
import 'package:sandeep_app/utils/home-widgets/catalog-list.dart';
import 'package:sandeep_app/utils/home-widgets/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      print(CatalogModel.items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.CreamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator().centered().py16().expand(),
                  )
              ],
            ),
          ),
        ));
  }
}

