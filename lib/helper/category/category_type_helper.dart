import 'package:flutter_news/helper/category/category_type.dart';

class CategoryTypeHelper {
  static String getString(CategoryType type) {
    switch (type) {
      case CategoryType.topHeadlines:
        return 'top-headlines';
      case CategoryType.business:
        return CategoryType.business.toString();
      case CategoryType.entertainment:
        return CategoryType.entertainment.toString();
      case CategoryType.general:
        return CategoryType.general.toString();
      case CategoryType.health:
        return CategoryType.health.toString();
      case CategoryType.science:
        return CategoryType.science.toString();
      case CategoryType.sports:
        return CategoryType.sports.toString();
      case CategoryType.technology:
        return CategoryType.technology.toString();
    }
  }
}
