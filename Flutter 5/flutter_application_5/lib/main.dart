import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

  class MyApp extends StatelessWidget{

    @override
    Widget build(BuildContext context ){
      return MaterialApp(home: MostarOcultarPassword());
    }
  }

  class MostarOcultarPassword extends StatefulWidget{
    @override 
    _MostrarOcultarPasswordState createState() =>_MostrarOcultarPasswordState();
  }

  class _MostrarOcultarPasswordState extends State<MostarOcultarPassword>{
    bool ocultar = true;

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text('Mostar/Ocultar Contraseña')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: ocultar,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(ocultar ? Icons.visibility_off : Icons.vibration),
                    onPressed: () {
                      setState((){
                        ocultar = !ocultar;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }