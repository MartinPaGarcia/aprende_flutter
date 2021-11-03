// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:aprende_flutter/src/pages/alert_page.dart';
import 'package:aprende_flutter/src/providers/menu_provider.dart';
import 'package:aprende_flutter/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      // ignore: prefer_const_literals_to_create_immutables
      //initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    // ignore: avoid_function_literals_in_foreach_calls
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
