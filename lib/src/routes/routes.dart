// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aprende_flutter/src/pages/alert_page.dart';
import 'package:aprende_flutter/src/pages/avatar_page.dart';
import 'package:aprende_flutter/src/pages/card_page.dart';
import 'package:aprende_flutter/src/pages/home_page.dart';
import 'package:aprende_flutter/src/pages/animated_container.dart';
import 'package:aprende_flutter/src/pages/input_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
  };
}
