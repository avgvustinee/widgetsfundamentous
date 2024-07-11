import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home:FirstPage()
    );
  }
}
// first page
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context){
              //return SecondPage();
            //}));
            //Navigator.push(context, CupertinoPageRoute(builder: (context){
             // return SecondPage();
            //}));
            Navigator.push(context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => SecondPage(),
                  transitionsBuilder: (context, animation1, animation2, child) => FadeTransition(
                    opacity: animation1,
                    child: child,),
                  transitionDuration: Duration(seconds: 1)

            ));
          },
          child:Text('First Page') ,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          //Navigator.pop(context);
          Navigator.of(context).pop();
        },
            child: Text('Second Page')),
      ),
    );
  }
}
