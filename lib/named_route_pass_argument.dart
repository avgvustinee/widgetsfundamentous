import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home:FirstPage(),
        //onGenerateRoute: (settings){
           //if (settings.name == '/second') {
            // final args = settings.arguments;
               //return PageRouteBuilder(
                 //pageBuilder: (context, animation1, animation2) => SecondPage(args),
                 //settings: settings,
                 //transitionsBuilder:  (context, animation1, animation2, child) => FadeTransition(
                  // opacity: animation1, child: child,),

      routes: {
          '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
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
            Navigator.pushNamed(
              context,
              '/second',
              arguments: 'This is sec arg'
            );
          },
          child:Text('First Page') ,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final title;
  SecondPage({this.title = 'Second Page'});
  @override
  Widget build(BuildContext context) {
    final String arg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(arg)),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pop();

        },
            child: Text('Second Page')),
      ),
    );
  }
}


