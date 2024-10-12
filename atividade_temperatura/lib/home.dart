import 'package:flutter/material.dart';

// Converter temperatura de Celsius para Fahrenheit e Kelvin, em duas telas, usando Navigator

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  clearFields() {}
  TextEditingController temperaturaController = TextEditingController();

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
                          183, 36, 92, 1))),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(246, 216, 131, 1),
            ),

            //////////

            body: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 100.0),

                    const Icon(Icons.sunny, color: Color.fromRGBO(246, 216, 131, 1)),

                    const SizedBox(height: 30.0),

                    const Text(
                      "Digite a temperatura em graus Celsius na espaço abaixo e depois clique no botão para realizar a conversão para Fahrenheit e Kelvin",
                      style: TextStyle(
                      fontFamily: 'Inria-Sans',
                      fontSize: 16.0,
                      color: Color.fromRGBO(25, 25, 25, 1))
                    ),

                    const SizedBox(height: 25.0),

                    SizedBox(
                      width: 250.0, // Set the desired width
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Digite aqui os graus em Celsius",
                        ),
                        textAlign: TextAlign.center,
                        controller: temperaturaController,
                      ),
                    ),

                    const SizedBox(height: 30.0),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(252, 213, 211, 1)),
                        onPressed: () {
                          String temperaturaInput = temperaturaController.text;
                          double celsius = double.tryParse(temperaturaInput) ?? 0.0;

                          Navigator.pushNamed(context, 'result', arguments: celsius,);
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
