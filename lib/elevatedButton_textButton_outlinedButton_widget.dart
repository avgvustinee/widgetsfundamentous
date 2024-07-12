import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyButtons(),

    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text('Elevated Button'),
                  //style: ButtonStyle(
                   // backgroundColor: MaterialStateProperty.all(Colors.amber[100]),
                 // ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[200],
                    foregroundColor: Colors.black
                    //disabledBackgroundColor: Colors.green[100],
                    //minimumSize: Size(200, 100),
                    //textStyle: TextStyle(fontSize: 20),
                    //elevation:4
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                onPressed: () {  },
              ),
              TextButton(child: Text('Text Button'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green[200],
                      foregroundColor: Colors.black
                  ),
                  onPressed: () { }
              ),

              OutlinedButton(child: Text('Outlined Button'),
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.greenAccent,
                      side: BorderSide(color: Colors.blueGrey,width: 2)
                  ),
                  onPressed: () { })
            ],
          ),
        ),
      ),
    );
  }
}
