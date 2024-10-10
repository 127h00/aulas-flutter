import 'package:flutter/material.dart';

// Converter temperatura de Celsius para Fahrenheit e Kelvin, em duas telas, usando Navigator

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<MainApp> {
  clearFields() {}
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(243, 243, 238, 1),

            //////////

            appBar: AppBar(
              title: const Text("Conversão de temperatura",
                  style: TextStyle(
                      fontFamily: 'Inria-Sans',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(
                          183, 36, 92, 1))), // MUDAR FONTE E TAMANHO
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(246, 216, 131, 1),
              actions: <Widget>[
                IconButton(
                    onPressed: clearFields(),
                    icon: const Icon(Icons.cached,
                        size: 30.0, color: Color.fromRGBO(183, 36, 92, 1)))
              ],
            ),

            //////////

            body: Padding(
                padding: EdgeInsets.all(70),
                child: Column(
                  children: <Widget>[
                    //////////

                    const Icon(Icons.sunny),

                    const Text(
                        "Digite a temperatura em graus Celsius na espaço abaixo e depois clique no botão para realizar a conversão para Fahrenheit e Kelvin"),

                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "Digite aqui os graus em Celsius"),
                      textAlign: TextAlign.center,
                      controller: pesoController,
                    ),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(252, 213, 211, 1)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Fazer conversão",
                          style:
                              TextStyle(color: Color.fromRGBO(183, 36, 92, 1)),
                        ))
                  ],
                )
                //crossAxisAlignment: CrossAxisAlignment.center,

                )));
  }
}
