import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:FirstPage(),
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/fourth': (context) => FourthPage(),
      },
    );
  }
}
// first page
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),),
      body: Container(
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              //Navigator.of(context).push();
              Navigator.pushNamed(context,'/second',);
            },
            child:Text('First Page') ,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Second Page '),),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
              child: Text('Second Page')),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context,'/fourth', ModalRoute.withName('/first'));
              },
              child: Text('Third page')),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: Container(
        color: Colors.lightBlue,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fourth Page')),
        ),
      ),
    );
  }
}

