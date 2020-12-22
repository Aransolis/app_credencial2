
import 'package:app_credencial2/generar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Credencial extends StatefulWidget {
  TextEditingController txtnombre;
  
  Credencial({Key key}) : super(key: key);
  

  @override
  _CredencialState createState() => _CredencialState();
}

class _CredencialState extends State<Credencial> {
  TextEditingController txtnombre = TextEditingController();
  TextEditingController txtedad = TextEditingController();
  TextEditingController txtpuesto = TextEditingController();
  TextEditingController txtTsanguineo = TextEditingController();
  TextEditingController txtTelefono = TextEditingController();

  final image = ImagePicker();
  String pathImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: Text(
          'App Credencial',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: txtnombre,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    hintText: 'Introduce el Nombre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: txtedad,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    hintText: 'Introduce la Edad',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: txtpuesto,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    hintText: 'Introduce el Puesto',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: txtTsanguineo,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    hintText: 'Introduce el Tipo Sanguíneo',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: txtTelefono,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    hintText: 'Introduce el Telefono de Contacto',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                color: Colors.teal[300],
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                shape:  StadiumBorder(),
                onPressed: () => abrirCamara(),
                child: Text(
                  "Tomar Foto",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              FlatButton(
                color: Colors.teal[300],
                textColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                shape:  StadiumBorder(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  
                  Generar( [txtnombre.text, txtedad.text,txtpuesto.text,txtTsanguineo.text,txtTelefono.text,pathImage]),
                  ),
                  );
                },
                child: Text(
                  "Generar Credencial",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          )),
    );
  }

  abrirCamara() async {
    final archivo = await image.getImage(source: ImageSource.camera);
    pathImage = archivo.path;
    setState(() {});
  }
}
