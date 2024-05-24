import 'package:flutter/material.dart';
import 'package:flutter_fb/screens/home/index.dart';
import 'package:flutter_fb/screens/home/notification.dart';
import 'package:flutter_fb/screens/login.dart';

class RouteNames {
  static final String login = "login";
  static final String home = "home";
  static final String notification = "notification";
}

var routes = <String, WidgetBuilder>{
  RouteNames.login: (_) => LoginPage(),
  RouteNames.home: (_) => HomePage(),
  RouteNames.notification: (_) => NofiticationPage(),
};
