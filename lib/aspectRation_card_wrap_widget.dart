import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            //direction: Axis.vertical,
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0,
            alignment: WrapAlignment.center,// gap between lines
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(radius:40,backgroundColor: Colors.blue.shade900, child: const Text('AT')),
                label: const Text('Augustine'),
              ),
              Chip(
                avatar: CircleAvatar(radius:40,backgroundColor: Colors.blue.shade900, child: const Text('SR')),
                label: const Text('Syre'),
              ),
              Chip(
                avatar: CircleAvatar(radius:40,backgroundColor: Colors.blue.shade900, child: const Text('DN')),
                label: const Text('Dianna'),
              ),
              Chip(
                avatar: CircleAvatar(radius:40,backgroundColor: Colors.blue.shade900, child: const Text('EH')),
                label: const Text('Engenheiro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}