import 'package:flutter/material.dart';

void main() => runApp(MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget{
  @override
  _MyStatefulWidgetState  createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  // State variables
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  // initial State
  @override
  void initState() {
    super.initState();
    // backend logic
  }
  // dispose
  @override
  void dispose() {
    super.dispose();
    // clean up resources
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_counter'),
              ElevatedButton(onPressed: _incrementCounter, child: Text("increment"))
            ],
          ),
        ),
      ),
    );

  }
}