import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//stateful -> vou mudar valores

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  HomeState createState() => HomeState(); // return HomeState()
}

class HomeState extends State<MainApp> {
  clearFields() {}
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        appBar: AppBar(
            title: const Text("Calculadora IMC"),
            centerTitle: true,
            backgroundColor: Colors.white30,
            actions: <Widget>[
              IconButton(
                  onPressed: clearFields(),
                  icon: const Icon(Icons.ac_unit_sharp)),
            ]),
            
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.accessibility_new_sharp,
                      size: 100.0, color: Colors.orange),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Peso (kg)"),
                    textAlign: TextAlign.center,
                    controller: pesoController,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Altura (cm)"),
                    textAlign: TextAlign.center,
                    controller: alturaController,
                  )
                ]))));
    // telas
    
  }
}
