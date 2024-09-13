import 'package:flutter/material.dart';

class York extends StatelessWidget {
  const York({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Você selecionou o Yorkshire!"),
        Image.asset("york.jpeg"),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("voltar"))
      ],
    )));
  }
}
