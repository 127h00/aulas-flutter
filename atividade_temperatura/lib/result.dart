import 'package:flutter/material.dart';

// Converter temperatura de Celsius para Fahrenheit e Kelvin, em duas telas, usando Navigator

class Result extends StatefulWidget {
  const Result({super.key});
  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  clearFields() {}
  TextEditingController temperaturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double celsius = ModalRoute.of(context)?.settings.arguments as double;
    double fahrenheit = (celsius * 9/5) + 32;
    double kelvin = celsius + 273.15;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(243, 243, 238, 1),

        //

        appBar: AppBar(
          title: const Text("Conversão de temperatura",
            style: TextStyle(
              fontFamily: 'Inria-Sans',
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(183, 36, 92, 1))),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(246, 216, 131, 1),
        ),

        //

        body: Center(
            child: Column(
            children: <Widget>[
              const SizedBox(height: 100.0),

            Text("Temperatura em Celsius: $celsius °C",
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(246, 216, 131, 1) 
              ),
            ), 

              const SizedBox(height: 25.0),

            Text("Temperatura em Fahrenheit: $fahrenheit °F",
              style: const TextStyle(
                fontSize: 17,
                color: Color.fromRGBO(183, 36, 92, 1)
              ),
            ), 

            const SizedBox(height: 23.0),

            Text("Temperatura em Kelvin: $kelvin K",
              style: const TextStyle(
                fontSize: 17,
                color: Color.fromRGBO(183, 36, 92, 1)
              ),
            ), 

          const SizedBox(height: 35.0),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(252, 213, 211, 1)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.home,
                color:Color.fromRGBO(183, 36, 92, 1),

              ),
          )
          ]
          )
        )

        )
    );
  }
}