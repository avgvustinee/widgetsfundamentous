import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(leading: const Icon(Icons.menu),
        title: const Text('Flutter App'),
        actions: const [
          InkWell(child: Icon(Icons.settings),)
        ],),
        body: const Center(
          child: Text("Flutter ", style: TextStyle(color: Colors.green),) ,
        ),
      ),
    );

  }
}