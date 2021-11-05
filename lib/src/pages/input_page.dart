// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_constructors_in_immutables, unused_local_variable, prefer_final_fields, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls, deprecated_member_use

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _fecha = "";
  /*List<String> _poderes = [
    "Kame Hame Ha",
    "Kaio-Ken",
    "Genkidama",
    "Ultra-Instinct"
  ];*/
  TextEditingController _inpputFieldDateController = TextEditingController();
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
          _crearFecha(context),
          //Divider(),
          //_crearDropdown(),
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

/*
  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = List<DropdownMenuItem<String>>;
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropdown() {
    return DropdownButton<String>(
      items: getOpcionesDropdown(),
      onChanged: (opt) {
        print(opt);
      },
    );
  }
*/
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
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inpputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: "Fecha de nacimiento",
        labelText: "Fecha de nmacimiento",
        helperText: "Seleccione su fecha de nacimiento",
        suffixIcon: Icon(Icons.perm_contact_cal_rounded),
        icon: Icon(Icons.calendar_today_rounded),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2050),
      //locale: Locale(),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inpputFieldDateController.text = _fecha;
      });
    }
  }
}
