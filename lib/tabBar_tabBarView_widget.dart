import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [
            Center(
              child: Text("It's a car here"),),
            Center(
              child: Text("It's a transit here"),),
            Center(
              child: Text("It's a bike here"),),
          ],),
          appBar: AppBar(
            title: Text('TabBar demo'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car),text: 'Car',),
              Tab(icon: Icon(Icons.directions_transit),text: 'Transit',),
              Tab(icon: Icon(Icons.directions_bike),text: 'Bike',)
            ],
              indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            indicator: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.green),),
          ),
        ),
      )
    );
  }
}
