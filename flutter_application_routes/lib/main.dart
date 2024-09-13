import 'package:flutter/material.dart';
import 'doguinhos.dart';
import 'york.dart';
import 'maltes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'doguinhos',
        routes: {
          'doguinhos': (context) => const Doguinhos(),
          'dogYork': (context) => const York(),
          'dogMaltes': (context) => const Maltes()
        });
  }
}
