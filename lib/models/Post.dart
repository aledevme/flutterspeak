class Post{

  int id;
  String url;
  String photographer;
  String photographerUrl;
  Map<String, dynamic> src;

  Post({
    this.id,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.src,
  });

  factory Post.fromJsonResponse( Map<String, dynamic> response){
    return Post(
      id: response['id'],
      url: response['url'],
      photographer: response['photographer'],
      photographerUrl: response['photographer_url'],
      src: response['src']
    );
  }

}