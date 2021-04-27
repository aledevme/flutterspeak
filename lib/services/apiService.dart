import 'dart:convert';

import 'package:flutterspeak/models/Post.dart';
import 'package:flutterspeak/services/values.dart';
import 'package:http/http.dart';

class ApiService{

  Future<List<Post>> getPosts() async {
    
    List<Post> posts = [];
    List<dynamic> list = [];
    Response response = await get(Uri.parse("$urlBASE/curated"), 
      headers: customHeader
    );
    
    Map<String, dynamic> res = jsonDecode(response.body);
    list = res['photos'];
    list.forEach((element) { 
      posts.add( Post.fromJsonResponse(element) );
      print(posts);
    });
    
    return posts;
  }

}