import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Generar extends StatefulWidget {
  List<String> valores = [];

  Generar(this.valores, {Key key}) : super(key: key);

  @override
  _GenerarState createState() => _GenerarState();
}

class _GenerarState extends State<Generar> {
  @override
  Widget build(BuildContext context) {
    var img = widget.valores[5] != null
        ? ClipOval(
            child: Image.file(
            File(widget.valores[5]),
            fit: BoxFit.contain,
            height: 200.0,
            width: 200.0,
          ))
        : CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
                'https://villasmilindovillas.com/wp-content/uploads/2020/01/Profile.png'),
          );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text(
          'Credencial',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(children: <Widget>[
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile(
            title: Text(
              'Nombre Completo:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              //row equivalente a hbox
              children: <Widget>[
                Text(widget.valores[0]),
              ],
            ),
            leading: Container(
              height: 38.0,
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.person),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black))),
            ), //izquierda
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile(
            title: Text(
              'Edad:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              //row equivalente a hbox
              children: <Widget>[
                Text(widget.valores[1]),
              ],
            ),
            leading: Container(
              height: 38.0,
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.hourglass_bottom),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black))),
            ), //izquierda
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile(
            title: Text(
              'Puesto:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              //row equivalente a hbox
              children: <Widget>[
                Text(widget.valores[2]),
              ],
            ),
            leading: Container(
              height: 38.0,
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.work),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black))),
            ), //izquierda
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile(
            title: Text(
              'Tipo de Sangre:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              //row equivalente a hbox
              children: <Widget>[
                Text(widget.valores[3]),
              ],
            ),
            leading: Container(
              height: 38.0,
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.medical_services),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black))),
            ), //izquierda
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 10.0,
          child: ListTile(
            title: Text(
              'Numero de Telefono:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              //row equivalente a hbox
              children: <Widget>[
                Text(widget.valores[4]),
              ],
            ),
            leading: Container(
              height: 38.0,
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.phone_android),
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 1.0, color: Colors.black))),
            ), //izquierda
          ),
        ),
        img
      ]),
    );
  }
}
