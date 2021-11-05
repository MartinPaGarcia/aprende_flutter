// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: "Tamaño de imagen",
        divisions: 20,
        value: _valorSlider,
        min: 0.0,
        max: 400.0,
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(image: NetworkImage(''),
    );
  }
}
