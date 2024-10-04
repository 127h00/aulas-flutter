import 'package:flutter/material.dart';
import 'package:flutter_application_api/model/product.dart';
import 'package:flutter_application_api/service/http.dart';

class Get extends StatelessWidget {
  const Get({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get data")),
      body: FutureBuilder(
          future: Http.getProduct(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Product> dataList = snapshot.data;
              return ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text(dataList[index].name),
                    subtitle: Text(dataList[index].desc),
                    trailing: Text(dataList[index].price),
                  );
                },
              );
            }
          }),
    );
  }
}
