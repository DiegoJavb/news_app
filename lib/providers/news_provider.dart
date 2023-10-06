import 'package:flutter/material.dart';
import 'package:news_app/models/news_models.dart';
import 'package:http/http.dart' as http;

final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '012f7d481e7d4f20946e23479b997798';

class NewsProvider extends ChangeNotifier {
  List<Article> headlines = [];
  NewsProvider() {
    this.getTopHeadLines();
  }

  Future getTopHeadLines() async {
    final url = '$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us';

    final resp = await http.get(Uri.parse(url));
    final newsModel = NewsModel.fromRawJson(resp.body);
    headlines.addAll(newsModel.articles);
    notifyListeners();
  }
}
