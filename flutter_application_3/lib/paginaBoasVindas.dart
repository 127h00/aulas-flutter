import 'package:flutter/material.dart';

class PaginaBoasVindas extends StatelessWidget {
  String _nome;

  PaginaBoasVindas(this._nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "Olá, $_nome",
              style: TextStyle(fontSize: 18),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9D1C1C)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Voltar",
              style: TextStyle(color: Colors.white),
            ))
      ],
    )));
  }
}
