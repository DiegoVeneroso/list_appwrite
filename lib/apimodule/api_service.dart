import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:list_appwrite/apimodule/api_client.dart';
import '../constants.dart' as constants;

import '../productmodule/models/product_model.dart';

class ApiService {
  static var client = http.Client();
  // List<ProductModel> items = <ProductModel>[];

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await ApiClient.databases.listDocuments(
        databaseId: '65106662707571968924',
        collectionId: '6510667487c988ec57fd');

    print(response.documents.toString());

    var items = response.documents
        .map((docmodel) => ProductModel.fromJson(docmodel.data.toString()))
        .toList();

    return items;
  }

  // static Future<List<ProductModel>> fetchProducts() async {
  //   var url = Uri.https('makeup-api.herokuapp.com', 'api/v1/products.json',
  //       {'brand': 'marienatie'});

  //   // var response = await client.get(
  //   //     'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie');
  //   var response = await client.get(url);

  // if (response.statusCode == 200) {
  //   var jsonString = response.body;
  //   return productFromJson(jsonString);
  // }

  //   return <ProductModel>[];
  // }
}
