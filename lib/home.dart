import 'package:flutter/material.dart';
import 'package:flutter_app1/about.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var messageText= TextEditingController();
  String title="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: messageText,
          ),
          RaisedButton(
              onPressed: (){
                setState(() {
                  title=messageText.text;
                });
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return About(title);
              }));
          },
          child: Text('Go to about Screen'),
          ),
        ],
      ),
    );
  }
}