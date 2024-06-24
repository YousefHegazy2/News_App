class NewsTileModel {
  final String? image;
  final String title;
  final String? subtitle;

  NewsTileModel(
      {required this.image, required this.title, required this.subtitle});

  
  // convert map to object
  factory NewsTileModel.fromJson(Map<String, dynamic> json) {
    return NewsTileModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
