import 'dart:math';

import 'package:flutter/material.dart';
import 'app_screens/first_screen.dart';
import 'app_screens/home.dart';
import 'app_screens/long_list.dart';

void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      home: Scaffold(
        appBar: AppBar(title: Text("My Flutter App"),),
        body: LongList(),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              debugPrint("FAB clicked");
            },
            child: Icon(Icons.plus_one),
            tooltip: "add me here",
        ),
      )
    );
  }
}


Widget getListView(BuildContext context){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text("Phone"),
        subtitle: Text("Battery Low"),
        trailing: Icon(Icons.access_alarm),
        onTap: (){
          debugPrint("clicked");
        },
      ),
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("Alarm"),
        subtitle: Text("My alarm"),
        trailing: Icon(Icons.four_k),
        onTap: (){
          debugPrint("wonder");
        },
      ),
      Text("Yet another element in List"),
      Container(color: Colors.red,height: 50.0,)
    ],
  ); // ListView

  return listView;
}

void BookAlert (BuildContext context){
  var alertButton = AlertDialog(
    title: Text("Alerted"),
    content: Text("Success"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertButton);
}


//
//
//Widget getListView(){
//  var listView = ListView(
//    children: <Widget>[
//      ListTile(
//        leading: Icon(Icons.ac_unit),
//        title: Text("My Picture"),
//        subtitle: Text("So beautiful"),
//        trailing: Icon(Icons.account_balance),
//        onTap: (){
//          debugPrint("landscape clicked");
//        },
//      ),
//
//      ListTile(
//        leading: Icon(Icons.save),
//        title: Text("My Picture"),
//        trailing: Icon(Icons.account_balance),
//      ),
//
//      ListTile(
//        leading: Icon(Icons.landscape),
//        title: Text("My Picture"),
//        subtitle: Text("So beautiful"),
//        trailing: Icon(Icons.account_balance),
//      ),
//
//    ],
//  );// listView
//
//  return listView;
//}
