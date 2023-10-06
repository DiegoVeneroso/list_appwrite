import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commonmodule/AppColor.dart';
import '../../commonmodule/AppString.dart';
import '../controllers/product_controller.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.productList),
        ),
        body: Obx(() {
          if (productController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://burst.shopifycdn.com/photos/wrist-watches.jpg',
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              // color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productController.productList[index].name
                                    .toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                              Text(
                                productController.productList[index].name
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.grey),
                              ),
                              // Text(
                              //   productController.productList[index].category
                              //       .toString(),
                              //   style: TextStyle(
                              //       fontSize: 14, color: AppColor.grey),
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    ),
                  ],
                );
              },
            );
          }
        }));
  }
}
