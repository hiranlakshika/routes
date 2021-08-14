import 'package:flutter/material.dart';
import 'package:routes/page_1.dart';
import 'package:routes/page_2.dart';
import 'package:routes/page_3.dart';

import 'main.dart';

const home = '/';
const pageOne = 'page_1';
const pageTwo = 'page_2';
const pageThree = 'page_3';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case pageOne:
        var data = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => Page1(
                  title: data,
                ));
      case pageTwo:
        return MaterialPageRoute(builder: (_) => Page2());
      case pageThree:
        return MaterialPageRoute(builder: (_) => Page3());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
