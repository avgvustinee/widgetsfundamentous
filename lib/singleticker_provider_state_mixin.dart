import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      // add event logic
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TabBar demo'),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.directions_car),text: 'Car',),
          Tab(icon: Icon(Icons.directions_transit),text: 'Transit',),
          Tab(icon: Icon(Icons.directions_bike),text: 'Bike',)
    ],
          controller: _tabController,
        ),
      ),
        body: TabBarView(
          controller: _tabController,
          children: [
          Center(
            child: Text("It's a car here"),),
          Center(
            child: Text("It's a transit here"),),
          Center(
            child: Text("It's a bike here"),),
        ],),
      ),
    );
  }
}
