import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _textEditingController;

  FocusNode first = FocusNode();
  FocusNode second = FocusNode();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                TextField(
                  controller: _textEditingController,
                  //autofocus: true,
                  focusNode: first,
                  //keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        //prefixIcon: Icon(Icons.verified_user),
                        labelText:'Username' ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                      // hintText: 'Password',
                    )
                ),
                SizedBox(height: 20,),
                TextField(
                  //controller: _textEditingController,
                  //autofocus: true,
                  //focusNode: second,
                  //keyboardType: TextInputType.emailAddress,
                  //textCapitalization: TextCapitalization.characters,
                  //textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green),
                  //maxLines: 4,
                  obscureText: true,
                  decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.password),
                    labelText:'Password' ,
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                     // hintText: 'Password',
                  )
                  //InputDecoration.collapsed(hintText: 'Password'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        //Navigator.of(context).push(MaterialPageRoute(builder:(context) => SecondPage(_textEditingController.text)));
         FocusScope.of(context).requestFocus(second);
      },),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String userInput ;
  SecondPage(this.userInput);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(userInput),),
      body: Center(
        child: Text(userInput),
      ),
    );
  }
}
