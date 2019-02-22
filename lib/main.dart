import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Borrar Tarifario"),
              trailing: new RaisedButton(
                child: new Text("Borrar Tarifario"),
                onPressed: _handlePressed,
              ),
            ),
//            new ListTile(
//              title: new Text("CONFIRMAR RESERVA"),
//              trailing: new RaisedButton(
//                child: new Text("Confirmar Reserva"),
//                onPressed: _handlePressed2,
//              ),
//            ),
          ],
        ),
      ),
    );
  }


  void _handlePressed() {
    var onYes = () {
      print("~~~ onYes");
    };

    var onNo = () {
      print("~~~ onYes");
    };

    confirmDialog3(context, onYes, onNo).then((_) {
      print("done");
    });
  }
  void _handlePressed2() {
    var onYes = () {
      print("~~~ onYes");
    };

    var onNo = () {
      print("~~~ onYes");
    };

    confirmDialog2(context, onYes, onNo).then((_) {
      print("done");
    });
  }
}

Future<bool> confirmDialog1(BuildContext context) {
  return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Confirmar Reserva'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('YES'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            new FlatButton(
              child: const Text('NO'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      });
}

Future<Null> confirmDialog3(BuildContext context, void onNo(), void onYes()) {
  return showDialog<Null>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text(
            '¿Desea borrar el tarifario de la cancha?',
            style: TextStyle(
                fontFamily: "ArcheSFPro",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF4A4A4A)),
          ),
          content: Scaffold(
            body: Container(
                child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: new Container(
                        alignment: Alignment.center,
                        width: 80.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius: new BorderRadius.circular(0)),
                        child: new Text(
                          "SI",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: new Container(
                        alignment: Alignment.center,
                        width: 80.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius: new BorderRadius.circular(0)),
                        child: new Text(
                          "NO",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text('Detalle de cancelación'),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "Commenta",
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            )),
          ),
        );
      });
}
Future<Null> confirmDialog2(BuildContext context, void onNo(), void onYes()) {
  return showDialog<Null>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text(
            '      Confirmar Reserva                     ',
            style: TextStyle(
                fontFamily: "ArcheSFPro",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF4A4A4A)),
          ),
          content: Scaffold(
            body: Container(
                child: ListView(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 30.0),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: new Container(
                            alignment: Alignment.center,
                            width: 80.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                                color: Colors.grey,
                                borderRadius: new BorderRadius.circular(0)),
                            child: new Text(
                              "SI",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: new Container(
                            alignment: Alignment.center,
                            width: 80.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                                color: Colors.grey,
                                borderRadius: new BorderRadius.circular(0)),
                            child: new Text(
                              "NO",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text('Detalle de cancelación'),
                    ),
                    SizedBox(height: 5),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          hintText: "Commenta",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        );
      });
}
