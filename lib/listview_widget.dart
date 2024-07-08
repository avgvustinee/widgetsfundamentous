import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final List<int> colorCodes = <int> [700,600,500, 400 , 300, 200, 100];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: ListView.separated(
            //scrollDirection: Axis.horizontal, 
            //physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(16),
            //reverse: true,
            //shrinkWrap: true,
            itemCount: colorCodes.length,
            itemBuilder: (BuildContext context , int index) {
              return ListTile(
                leading: Image.network(''),
                title: Text(''),
                subtitle: Text(''),

              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return  Divider();

          },
          ),
        ),
      ),
    ),
    );
  }

}