import 'package:flutter/material.dart';

class Maltes extends StatelessWidget {
  const Maltes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Você selecionou o Maltês!"),
        Image.asset("maltes.jpeg"),
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
