import 'package:flutter_news/helper/category/category_type.dart';

class CategoryTypeHelper {
  static String getString(CategoryType type) {
    switch (type) {
      case CategoryType.topHeadlines:
        return 'top-headlines';
      case CategoryType.business:
        return 'business';
      case CategoryType.entertainment:
        return 'entertainment';
      case CategoryType.general:
        return 'general';
      case CategoryType.health:
        return 'health';
      case CategoryType.science:
        return 'science';
      case CategoryType.sports:
        return 'sports';
      case CategoryType.technology:
        return 'technology';
    }
  }
}
