import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "hello world",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Raleway-Bold',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Text(
                      "Visal Prom",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Raleway-Bold',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "hello world",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Raleway-Bold',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: Colors.white),
                  ),
                  Text(
                    "Good Day",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Raleway-Bold',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: Colors.white),
                  ),
                ],
              ),
              VisalImage(),
              BookButton(),
            ],
          )

//        margin: EdgeInsets.all(60.0),
//        padding: EdgeInsets.all(50.0),

          ),
    );
  }
}

class VisalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/good.jpg');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      height: 50.0,
      width: 250.0,
      child: RaisedButton(
          child: Text(
            "Book your flight",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          color: Colors.orange,
          onPressed: () => bookAlert(context)),
    ); //container
  }

  void bookAlert(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Dialog Alerted"),
      content: Text("Successfully alert"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog);
  }
}
