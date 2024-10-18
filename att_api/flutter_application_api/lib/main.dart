import 'package:flutter/material.dart';
import 'package:flutter_application_api/view/get.dart';
import 'package:flutter_application_api/view/post.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, title: "APP CRUD", home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API CRUD"),
          backgroundColor: Color.fromARGB(255, 74, 159, 188),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 52, 132, 197)),
                child: Text("Products")),
            ListTile(
                leading: const Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Get"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Get();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Post"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Post();
                }));
              },
            )
          ],
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          ),
        ));
  }
}
