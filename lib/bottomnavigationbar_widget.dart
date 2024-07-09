import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyBottomNavigationBar() ,
    );
  }
} 

class MyBottomNavigationBar extends StatefulWidget {

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  // method for tapped items
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _page = [
    Text("Home Page"),
    Text("Business Page"),
    Text("Setting Page"),
    Text("School Page"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _page[_selectedIndex]),
      //body: Center(child: IndexedStack(alignment: AlignmentDirectional.center,
        //index: _selectedIndex,children: [
          //TextField(),
          //Text("Business Page"),
         // Text("Setting Page"),
         // Text("School Page"),
        //],)),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //iconSize: 40,
        //mouseCursor: SystemMouseCursors.grab,
        //selectedFontSize: 20,
        //showSelectedLabels: true,
        //showUnselectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business),label: 'Business'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School')
      ],
      selectedItemColor:Colors.green,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,) ,
    );
  }
}
