import 'package:flutter/material.dart';
class ListOfOptions extends StatefulWidget {
  static final String route = '/';
  @override
  _ListOfOptionsState createState() => _ListOfOptionsState();
}

class _ListOfOptionsState extends State<ListOfOptions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          ListTile(
            title: Text('Demostrativo - Sin API'),
            onTap: () => Navigator.pushNamed(context, '/withoutApi'),
          ),
          ListTile(
            title: Text('Demostrativo - Con API'),
            onTap: () => Navigator.pushNamed(context, '/withApi'),
          )
        ],
      ),
    );
  }
}