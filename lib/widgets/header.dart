import 'package:flutter/material.dart';
class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,3), // changes position of shadow
                ),
              ]
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: FadeInImage(
                fit: BoxFit.cover,
                width: 50,
                height: 50,
                placeholder: AssetImage('assets/loading.gif'), 
                image: NetworkImage('https://expertphotography.com/wp-content/uploads/2018/10/cool-profile-pictures-fake-smile.jpg')),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Colors.orange[100]
                  )
                ),
                child: Icon(Icons.notifications_outlined, size: 28, color: Colors.orange[800]),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Colors.orange[200],
                  )
                ),
                child: Icon(Icons.camera_outlined, size: 28, color: Colors.orange[800]),
              )
            ],
          )
        ],
      ),
    );
  }
}