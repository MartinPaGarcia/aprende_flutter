// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        counter: Text("Letras: ${_nombre.length}"),
        hintText: "Nombre de la persona",
        labelText: "Nombre",
        helperText: "Solo es el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
        title: Text("Nombre es: $_nombre"),
        subtitle: Text("Correo es: $_email"));
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: "Correo electronico",
        labelText: "Correo",
        helperText: "Escriba su correo electronico",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email_rounded),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: "Password",
        labelText: "Password",
        helperText: "Escriba su password",
        suffixIcon: Icon(Icons.password_rounded),
        icon: Icon(Icons.pattern_sharp),
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }
}
