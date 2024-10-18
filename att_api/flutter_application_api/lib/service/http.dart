import "dart:io";
import "dart:js_interop_unsafe";

import "package:flutter_application_api/model/product.dart";
import "package:http/http.dart" as http;
import "dart:convert";

class Http {
  static String url = "http://177.220.18.49/api/";

  static getProduct() async {
    List<Product> productList = [];

    try {
      final result = await http.get(Uri.parse("${url}get_product"));
      if (result.statusCode == 200) {
        var data = jsonDecode(result.body);
        data['product'].forEach((value) => productList
            .add(Product(value["name"], value["price"], value["desc"])));
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static postProduct(Map pdata) async {
    try {
      final result = await http.post(Uri.parse("${url}add_product"),
          body: json.encode(pdata),
          headers: {HttpHeaders.contentTypeHeader: 'aplication/json'});

      if (result.statusCode == 200) {
        var data = jsonDecode(result.body.toString());
        print(data);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
