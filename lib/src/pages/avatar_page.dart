// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Page"),

        //Avatares, se muestran en la parte superior derecha
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/116397349/original/4adccdb75705c5f265105e8b6058218c592fdeb6/do-pixel-art-or-pixel-concept-art-for-you.jpg'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: const Text("MP"),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://images.wallpapersden.com/image/download/iceberg-minimal_a2lnaGWUmZqaraWkpJRnam1lrWZpaWU.jpg'),
          fadeOutDuration: Duration(milliseconds: 250),
          ),
      ),
      //Boton de home
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.door_back_door_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
