import 'package:dio/dio.dart';
import 'package:news/models/news_tile_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<NewsTileModel>> getnews(final String category) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=aa5123399b3d4f26a7a52b561a138757');

    Map<String, dynamic> jsondate = response.data;

    List<dynamic> articles = jsondate["articles"];

    List<NewsTileModel> newsmodel = [];

    // convert map to object
    for (var article in articles) {
      NewsTileModel articlemodel = NewsTileModel.fromJson(article);

      newsmodel.add(articlemodel);
    }
    return newsmodel;
  }
}
