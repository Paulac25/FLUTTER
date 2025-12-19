import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion',
      home: const AplicacionWidget(),
    );
  }
}

class AplicacionWidget extends StatefulWidget{
  const AplicacionWidget({super.key});

  @override
  _AplicacionWidgetState createState() =>
  _AplicacionWidgetState();
}

class _AplicacionWidgetState extends State<AplicacionWidget>{
  List<String> elementos = ['Primero', 'Segundo'];

  @override
  void initState(){
    super.initState();
    print('initState: Creado');
  }

  @override
  void dispose(){
    super.dispose();
    print('dispose: Eliminado');
  }

  void agregar() {
  setState(() {
    elementos.add('Elemento ${elementos.length + 1}');
  });

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Elemento agregado')),
  );
}

void eliminar(int index) {
  setState(() {
    elementos.removeAt(index);
  });

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Elemento eliminado')),
  );
}

  @override
  Widget build(BuildContext context){
    print('build: Redibujado');

    return Scaffold(
  appBar: AppBar(
    title: const Text('Aplicación'),
  ),

  body: ListaElementos(
    elementos: elementos,
    onEliminar: eliminar,
  ),

  floatingActionButton: FloatingActionButton(
    onPressed: agregar,
    child: const Icon(Icons.add),
  ),
);

  }
}

class ListaElementos extends StatelessWidget{
  final List<String> elementos;
  final Function(int) onEliminar;

  const ListaElementos({
    super.key,
    required this.elementos,
    required this.onEliminar,
  });

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: elementos.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(elementos[index]),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onEliminar(index),
          ),
        );
      }
    );
  }
}