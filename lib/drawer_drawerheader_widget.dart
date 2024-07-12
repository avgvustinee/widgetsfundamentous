import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: Container(
          color: Colors.cyan,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              //DrawerHeader(decoration: BoxDecoration(color: Colors.orangeAccent),
                       // child: Container(color: Colors.yellow,child: Text('Drawer Header'),),),
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://vmagazine.com/wp-content/uploads/2023/02/221115_V_MAN_VN50_JADEN_SMITH_LOOK_01_0069_V01_DEF_CMJN_Digital.jpg',
                  scale: 20)
                ),
                decoration:BoxDecoration(color: Colors.green) ,
                accountName: Text('Deus Engenheiro'),
                accountEmail: Text('deus.engenheiro@gmail.com'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: (){

                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: (){

                },
              ),

            ],
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
               child: Text("Drawer"), onPressed: () {
                 Scaffold.of(context).openEndDrawer();
            },),
          );
        }
      ),
    );
  }
}

