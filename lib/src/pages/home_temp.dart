// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["Martin", "Jp", "Allb", "Feliche", "Joel"];

  HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Components Temp"),
        ),
        //body: ListView(children: _crearItems()),
        body: ListView(children: _crearItemsCorto()));
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children:<Widget> [
          ListTile(
            
            title: Text(item + "!"),
            subtitle: Text("Aqui va la info de un subtitulo"),
            leading: Icon(Icons.accessibility_rounded),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
