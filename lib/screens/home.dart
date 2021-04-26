import 'package:flutter/material.dart';
import 'package:flutterspeak/widgets/header.dart';
class Home extends StatefulWidget {
  static final String route = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header()
            ],
          ),
        )
      )
    );
  }
}