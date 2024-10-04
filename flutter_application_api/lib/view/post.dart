import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<StatefulWidget> createState() => PostState();
}

class PostState extends State<Post> {
  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("inserir produto"),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(label: Text("Product name")),
                ),
                TextField(
                  controller: price,
                  decoration: InputDecoration(label: Text("Product name")),
                ),
                TextField(
                  controller: desc,
                  decoration: InputDecoration(label: Text("Product name")),
                ),
                ElevatedButton(
                    onPressed: () {
                      var data = {
                        "name": name.text,
                        "price": price.text,
                        "desc": desc.text
                      };
                    },
                    child: const Text("Post"))
              ],
            )));
  }
}
