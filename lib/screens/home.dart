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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              helloMessage(name: 'Alejandro', message: 'Exploremos fotografias')
            ],
          ),
        )
      )
    );
  }

  Widget helloMessage({@required String name, @required String message}){
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hey, $name!', style: TextStyle(
            fontSize: 25
          )),
          SizedBox(height: 10),
          Text(message, style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          )),
        ],
      ),
    );
  }

  
}