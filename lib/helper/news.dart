import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_news/helper/country/cc_helper.dart';
import 'package:flutter_news/helper/types/news_type.dart';
import 'package:flutter_news/helper/types/news_type_helper.dart';
import 'package:flutter_news/models/article_model.dart';
import 'package:http/http.dart' as http;

import 'country/country.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews(
      @required Country country, @required NewsType newsType) async {
    // https://newsapi.org/v2/top-headlines?country=de&apiKey=962815b6029c4d0a8646759591182347
    final String apiKey = '962815b6029c4d0a8646759591182347';
    var url = Uri.parse(
        'https://newsapi.org/v2/${NewsTypeHelper.getString(newsType)}?country=${CCHelper.getCC(country)}&apiKey=${apiKey}');

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            ArticleModel articleModel = new ArticleModel(
              title: element['title'],
              description: element['description'],
              content: element['content'],
              author: element['author'],
              url: element['url'],
              urlToImage: element['urlToImage'],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}
