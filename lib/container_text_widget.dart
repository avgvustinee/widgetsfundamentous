import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            //margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            //padding: EdgeInsets.all(50),
            //transform: Matrix4.translationValues(100, -100, 0),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
            color: Colors.lightGreen,
                border: Border.all(
                  width: 2,
                  color: Colors.blue
                ),
              //borderRadius: BorderRadius.all(Radius.circular(150))
            ),
            child: const Text("Deus Engenheiro", style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationStyle: TextDecorationStyle.dashed,
              decorationColor: Colors.white,
                letterSpacing: 10,
              wordSpacing: 10

            ),),
          ),
        )
      ),
    );
  }
}
