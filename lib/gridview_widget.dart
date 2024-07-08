import 'package:flutter/material.dart';
import 'package:widgetsfundamentous/listview_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // Dynamic Data
  final _colors = <int> [100, 200, 300, 400, 500, 600, 700, 800, 800, 900];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: _colors.length,
              //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //crossAxisCount: 2
              //),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 10,
                  crossAxisSpacing: 20
              ),
              itemBuilder: (BuildContext context , int index ){
                var color = _colors[index];
                return Container(color:Colors.amber[color]);
              })
        ),
      ),
    );

  }

}