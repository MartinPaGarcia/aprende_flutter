import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Avatar Page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.door_back_door_rounded),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}