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
              borderRadius: BorderRadius.circular(8.0)
            )
          ),
          onPressed: (){},
        ),
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