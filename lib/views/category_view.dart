import 'package:flutter/material.dart';
import 'package:flutter_news/models/category_type.dart';
import 'package:flutter_news/models/country.dart';
import 'package:flutter_news/helper/news.dart';
import 'package:flutter_news/models/article_model.dart';

class CategoryView extends StatefulWidget {
  final CategoryType newsType;
  CategoryView({this.newsType});

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel> articles = [];
  bool _loading = true;

  getNews() async {
    News news = News();
    await news.getNews(Country.germany, widget.newsType);
    articles = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.newsType.toString().toUpperCase()),
      ),
      body: Container(),
    );
  }
}
