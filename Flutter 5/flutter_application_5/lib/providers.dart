import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (_)=>ColorModel(), child: MyApp()));
}
class ColorModel with ChangeNotifier{
  Color _color = Colors.blue;
  Color get color => _color;

  void cambiarColor(Color nuevoColor){
    _color = nuevoColor;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Selector de color')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ColorModel>(
              builder: 
              (context, colorModel, _) => Container(
                width: 100,
                height: 100,
                color: colorModel.color,
              ),
          ),
          SizedBox(height: 20),
          Wrap(
              spacing: 10,
              children: 
              [Colors.yellow, Colors.purple, Colors.red, Colors.black]
                  .map(
                    (color) => ElevatedButton(
                      onPressed: 
                      () => context.read<ColorModel>().cambiarColor(
                        color,
                        ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: color,
                        ), 
                        child:SizedBox(width: 24, height: 24),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}