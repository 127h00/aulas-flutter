import 'package:flutter/material.dart'; // não mexer aqui

void main() {
  // método principal
  // runApp(const MainApp());// posso mudar o nome da classe que vou usar
  runApp(ListaEstatica());
}

// StatelessWidget = pai -- MainApp = filho
class ListaEstatica extends StatelessWidget {
  // isso é uma classe
  // class MainApp extends StatelessWidget {

  // const MainApp(
  const ListaEstatica(
      {super.key}); // super.key -> ta pegando o construtor do statelessWidget

  @override
  Widget build(BuildContext context) {
    // retorna um componente // não mexer
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // classe AppBar, no construtor dele eu coloquei um título
            title: const Text("Lista Estática"),
          ),
          body: buildListView()),
    );
  }

  buildListView() {
    return ListView(children: <Widget>[
      ListTile(
        leading: Icon(Icons.add_box),
        title: Text("item 1"),
        subtitle: Text("subtexto 1"),
        trailing: Icon(Icons.add_location), // "à direita"
        onTap: () {
          print("item 1 selecionado");
        },
      ),
      ListTile(
        leading: Icon(Icons.bubble_chart),
        title: Text("item 2"),
        subtitle: Text("subtexto 2"),
        trailing: Icon(Icons.flood),
        onLongPress: () {
          print("item 2 selecionado");
        },
      ),
      ListTile(
        leading: Icon(Icons.blur_on),
        title: Text("item 3"),
        subtitle: Text("subtexto 3"),
        trailing: Icon(Icons.do_disturb),
        onTap: () {
          print("item 3 selecionado");
        },
      )
    ]);
  }
}


//body: Center(
          // Center é uma classe (nesse caso) pai
          // corpo do meu aplicativo tem uma mensagem "hello world"
          // child: Text('Hello World!'), // filho

// Scaffold -> vou fazer uma pilha