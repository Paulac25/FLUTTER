import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Tarea {
  String titulo;
  bool completada;

  Tarea(this.titulo, this.completada);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista de Tareas')),
        body: ListaTareas(),
      ),
    );
  }
}

class ListaTareas extends StatefulWidget {
  @override
  ListaTareasState createState() => ListaTareasState();
}

class ListaTareasState extends State<ListaTareas> {
  List<Tarea> tareas = [
    Tarea('Talleres de Flutter', false),
    Tarea('Preparar regalos de Navidad', false),
    Tarea('Viajar para Año Nuevo', false),
  ];

  void toggleCompletada(int index) {
    setState(() {
      tareas[index].completada = !tareas[index].completada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tareas.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(tareas[index].titulo),
          value: tareas[index].completada,
          onChanged: (bool? value) {
            toggleCompletada(index);
          },
        );
      },
    );
  }
}
