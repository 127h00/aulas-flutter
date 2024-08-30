// ignore: file_names
import 'package:flutter/material.dart';
import 'paginaBoasVindas.dart';

class PaginaInicial extends StatelessWidget {
  TextEditingController _textoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Digite o seu nome: ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 239, 231, 160))),
          const SizedBox(height: 30),
          TextField(
            controller: _textoNome,
            decoration: const InputDecoration(
                hintText: "I just wanna be part of your symphony 🐬🌺🎶",
                contentPadding: EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 255, 104, 154)))),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 83, 41, 234)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaginaBoasVindas(_textoNome.text)));
              },
              child: const Text(
                "Enviar",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    ));
  }
}
