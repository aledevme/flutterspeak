import 'package:flutter/material.dart';
import 'package:flutterspeak/screens/home.dart';
import 'package:flutterspeak/screens/menu.dart';
import 'package:flutterspeak/screens/withApi.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        Home.route : (BuildContext context) => Home(),
        ListOfOptions.route : (BuildContext context) => ListOfOptions(),
        WithAPI.route : (BuildContext context) => WithAPI()
      },
    );
  }
}