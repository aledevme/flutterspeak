import 'package:flutter/material.dart';
import 'package:flutterspeak/widgets/header.dart';
class Home extends StatefulWidget {
  static final String route = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String filterSelected = 'Todos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              helloMessage(name: 'Alejandro', message: 'Exploremos fotografias'),
              searchField(),
              filters()
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

  Widget searchField(){
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 20,
            offset: Offset(2,7), // changes position of shadow
          ),
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18
          ),

          suffixIcon: Padding(
            padding: EdgeInsets.only(
              right: 20
            ),
            child: Icon(Icons.search, size: 30, color: Colors.orange),
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.grey[400]
          ),
          hintText: 'Busca algo...'
        ),
      ),
    );
  }

  Widget filters(){
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 30
      ),
      child: Wrap(
        spacing:20,
        children: ['Todos', 'Mas visitados', 'Recomendaciones'].map((e) => GestureDetector(
          onTap: () => changeFilter(e),
          child: Container(
            child:  Text(e, style: TextStyle(
              fontSize: 16,
              color: e == filterSelected ? Colors.orange[700] : Colors.grey,
              fontWeight: FontWeight.w500
            )),
          ),
        )).toList(),
      ),
    );
  }

  void changeFilter(String option){
    setState(() {
      filterSelected = option;
    });
  }
}