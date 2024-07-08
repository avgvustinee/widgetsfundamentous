import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.lightGreen,
              height: 100,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  _blueBox(),
                  Spacer(flex: 1,),
                  _blueBox(),
                  Spacer(flex: 6,),
                  _blueBox(),


                ],

              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueBox(){
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all()
      ),

    );
  }
}