// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Mostrar Alerta"),
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.door_back_door_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            title: const Text("Titulo Alerta"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Este es el contenido de la alerta"),
                FlutterLogo(size: 50.0)
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Cancelar"),
                onPressed: ()=>Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text("Ok"),
                onPressed: ()=>Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }
}
