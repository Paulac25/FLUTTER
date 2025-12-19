import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio con Children'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text(
              'Primera línea',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Segunda línea',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Tercera Línea',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    ),
  );
}
}