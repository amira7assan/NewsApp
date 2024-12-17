import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=baeae038ecbc48d1b5b57d8758ed9af5&category=$category',
          //'https://newsapi.org/v2/top-headlines?country=us&apiKey=2fb18152dd4344e3ad6049eb37d3fcc1&category=$category',

      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = response.data;

        List<dynamic>? articles = jsonData['articles'];
        if (articles != null) {
          return articles.map((article) => ArticleModel.fromJson(article))
              .toList();
        } else {
          return [];
        }
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error fetching articles: $e');
      return [];
    }
  }
}