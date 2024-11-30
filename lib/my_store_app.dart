import 'package:flutter/material.dart';
import 'package:workshop_basilicata/item_detail.dart';
import 'package:workshop_basilicata/item_model.dart';
import 'package:workshop_basilicata/store_list.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFF00000),
        ),
      ),
      home: StoreList(),
    );
  }
}
