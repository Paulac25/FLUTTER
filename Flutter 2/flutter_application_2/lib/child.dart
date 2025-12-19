import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Scaffold(
            appBar: AppBar(
            title: const Text('Ejemplo con child'),
            ),
            body: Center(
              child: Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
              child: const Center(
              child: Text(
              'Hola, Flutter!',
              style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}