import 'package:flutter/material.dart';

void main() {
  runApp(const ListaDinamica());
}

class ListaDinamica extends StatelessWidget {
  const ListaDinamica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue[50]),
      home: Scaffold(
          appBar: AppBar(
              foregroundColor: Colors.lime[50],
              title: Text("Lista Dinâmica"),
              backgroundColor: Colors.indigo[500]),
          body: buildListViewDynamic(context)),
    );
  }

  buildListViewDynamic(BuildContext context) {
    const sudeste = [
      'Espírito Santo',
      'Minas Gerais',
      'Rio de Janeiro',
      'São Paulo'
    ];

    return ListView.builder(
        itemCount: sudeste.length, // len da lista
        // esse itemBuilder ta agindo tipo um for mal feito
        itemBuilder: (context, index) {
          // (oq eu quero escrever, index)
          return ListTile(
              title: Text(sudeste[index],
                  style: TextStyle(color: Colors.indigo[700])));
        });
  }
}
