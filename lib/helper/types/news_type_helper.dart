import 'package:flutter_news/helper/types/news_type.dart';

class NewsTypeHelper {
  static String getString(NewsType type) {
    switch (type) {
      case NewsType.topHeadlines:
        return 'top-headöines';
      case NewsType.business:
        return NewsType.business.toString();
      case NewsType.entertainment:
        return NewsType.entertainment.toString();
      case NewsType.general:
        return NewsType.general.toString();
      case NewsType.health:
        return NewsType.health.toString();
      case NewsType.science:
        return NewsType.science.toString();
      case NewsType.sports:
        return NewsType.sports.toString();
      case NewsType.technology:
        return NewsType.technology.toString();
    }
  }
}
