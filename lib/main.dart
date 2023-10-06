import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'commonmodule/AppColor.dart';
import 'commonmodule/AppString.dart';
import 'productmodule/views/product_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
