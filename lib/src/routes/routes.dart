import 'package:flutter/material.dart';
import 'package:flutter_component/src/pages/alert_page.dart';
import 'package:flutter_component/src/pages/animated_container.dart';
import 'package:flutter_component/src/pages/avatar_page.dart';
import 'package:flutter_component/src/pages/card_page.dart';
import 'package:flutter_component/src/pages/home_page.dart';
import 'package:flutter_component/src/pages/input_page.dart';
import 'package:flutter_component/src/pages/listview_page.dart';
import 'package:flutter_component/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated_container': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'sliders': (BuildContext context) => SliderPage(),
    'listas': (BuildContext context) => ListaPage(),
  };
}