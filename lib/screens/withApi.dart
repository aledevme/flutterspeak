import 'package:flutter/material.dart';
import 'package:flutterspeak/widgets/header.dart';
class WithAPI extends StatefulWidget {
  static final String route = '/withApi';
  @override
  _WithAPIState createState() => _WithAPIState();
}

class _WithAPIState extends State<WithAPI> {

  bool withAPI = false;
  
  String filterSelected = 'Todos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              helloMessage(name: 'Alejandro', message: 'Exploremos fotografias'),
              searchField(),
              filters(),
              sliderOfImages()
            ],
          ),
        )
      )
    );
  }

  //hello message
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

  //searchfield
  Widget searchField(){
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
              top: 20,
              right: 20,
              bottom: 20
            ),
            child: Icon(Icons.search, size: 30, color: Colors.orange),
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)
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


  //filter widget
  Widget filters(){
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 40
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

  Widget sliderOfImages(){
    return Container(
      padding: EdgeInsets.only(
        top: 30,
      ),
      height: 500,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30
        ),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return Container(
            margin: EdgeInsets.only(
              right:20 
            ),
            padding: EdgeInsets.all(15),
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 20,
                  offset: Offset(2,7), // changes position of shadow
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0,8), // changes position of shadow
                      ),
                    ]
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: FadeInImage(
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: AssetImage('assets/loading.gif'),
                      image: NetworkImage('https://images.pexels.com/photos/7316648/pexels-photo-7316648.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text('Lugar 1',),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text('Madripur, España')
                  ],
                )
              ],
            )
          );
        },
      ),
    );
  }



}