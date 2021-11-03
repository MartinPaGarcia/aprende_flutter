// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:aprende_flutter/src/routes/routes.dart';
import 'package:aprende_flutter/src/pages/alert_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      //home: HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (settings) {        
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}
