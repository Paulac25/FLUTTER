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
            title: const Text('TAREA'),
            ),
            body: Container(
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){},
                    child: const Text('Click'),
                    
                    ),
                    ElevatedButton(onPressed: (){},
                    child: const Text('Click'),
                    ),
                    ElevatedButton(onPressed: (){},
                    child: const Text('Click'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}