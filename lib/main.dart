import 'package:flutter/material.dart';
import 'package:flutter_app1/home.dart';

void main(){
  runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red

        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text ("App title"),
            actions: <Widget>[
              Icon(Icons.search),
              Icon(Icons.shopping_cart)
            ],
          ),
          drawer: Drawer(),
          body: Home(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.red,),
                  title: Text("Home", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red ),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black,),
                  title:Text("Account", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),)
              ),
            ],
          )
        ),
      )
  );

}