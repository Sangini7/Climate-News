import 'dart:convert';

import 'package:newsapp/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> newsList = [];
  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/everything?q=Climate&from=2021-07-14&sortBy=publishedAt&apiKey=dbc902c32b0d474a9c9275ab89cc96ad';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            title: element['title'],
            description: element['description'],
            // content: element['content'],
            url: element['url'],
            urlToImage: element['urlToImage'],
          );
          newsList.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> newsList = [];
  Future<void> getNews(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=$category&from=2021-07-14&sortBy=publishedAt&apiKey=dbc902c32b0d474a9c9275ab89cc96ad';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            title: element['title'],
            description: element['description'],
            // content: element['content'],
            url: element['url'],
            urlToImage: element['urlToImage'],
          );
          newsList.add(articleModel);
        }
      });
    }
  }
}
