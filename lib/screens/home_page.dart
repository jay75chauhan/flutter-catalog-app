import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onBackPressed() async {
    exit(0);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catelogJson);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dumyList = List.generate(50, (i) => CatalogModel.items[0]);
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: dumyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: dumyList[index]);
              }),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
