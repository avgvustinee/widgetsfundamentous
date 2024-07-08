import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      home: Scaffold(
        body:Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: ClipOval(
              child:Image.network(
                  'https://vmagazine.com/wp-content/uploads/2023/02/221115_V_MAN_VN50_JADEN_SMITH_LOOK_01_0069_V01_DEF_CMJN_Digital.jpg',fit: BoxFit.cover)
              ,),
            //color: Colors.blue,
            //decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(150),
                //color: Colors.blue,
            //image: DecorationImage(
             // fit: BoxFit.fill,
             // image: NetworkImage('https://vmagazine.com/wp-content/uploads/2023/02/221115_V_MAN_VN50_JADEN_SMITH_LOOK_01_0069_V01_DEF_CMJN_Digital.jpg')
             // ,),
            ),
            //child: Image.network('https://vmagazine.com/wp-content/uploads/2023/02/221115_V_MAN_VN50_JADEN_SMITH_LOOK_01_0069_V01_DEF_CMJN_Digital.jpg',
              //fit:N BoxFit.fill,
              //alignment: Alignment.center,
             // color: Colors.amberAccent,
             // colorBlendMode: BlendMode.colorBurn,

            ),
          ),
    );
  }
}
