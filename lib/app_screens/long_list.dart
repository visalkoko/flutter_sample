import 'package:flutter/material.dart';

class LongList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var listItems = getListElements();
    var listView = ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(listItems[index]),
            leading: Icon(Icons.arrow_left),
            onTap: () {
              showSnackBar(context, listItems[index]);
            },
          );
        });
    return listView;
  }
}

List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "The item is $counter");
  return items;
}

void showSnackBar(BuildContext context, String items){
  var snackBar = SnackBar(
    content: Text("you have clicked $items"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          debugPrint("perform undo operation");
        }),
  ); //snackBar

  Scaffold.of(context).showSnackBar(snackBar);

}

