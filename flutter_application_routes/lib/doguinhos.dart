import 'package:flutter/material.dart';

class Doguinhos extends StatelessWidget {
  const Doguinhos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("qual doguinho?",
                style: TextStyle(fontSize: 22), textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 198, 73, 115)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'dogYork');
                      },
                      child: const Text("Yorkshire",
                          style: TextStyle(color: Colors.white)))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 248, 213, 225)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'dogMaltes');
                  },
                  child: const Text("Maltês",
                      style: TextStyle(color: Colors.white))),
            ],
          )
        ]));
  }
}
