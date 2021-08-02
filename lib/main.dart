import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Expanded buttons(int number, Color color){
     return Expanded(
       child: FlatButton(
        color:color,
        onPressed: (){
          final player=AudioCache();
          player.play('note$number.wav');
        },
        child: Text('d'),
    ),
     );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttons(1, Colors.red),
              buttons(2, Colors.blueAccent),
              buttons(3, Colors.green),
              buttons(4, Colors.yellow),
              buttons(5, Colors.brown),
              buttons(6, Colors.purpleAccent),
              buttons(7, Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
