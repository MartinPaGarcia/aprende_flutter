// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: const Text("Tarjeta"),
              subtitle: const Text("Aqui va la descripción de la tarjeta")),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text("Cancelar"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Ok!"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5.0, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 250),
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://eskipaper.com/images/landscape-wallpaper-hd-37.jpg"),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text("Landscape Walpaper"))
          ],
        ));
  }
}
