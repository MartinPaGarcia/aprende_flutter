import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  const ListaPage({ Key? key }) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina Lista"),
      ),
      body: const Text("Listas"),
      
    );
  }
}