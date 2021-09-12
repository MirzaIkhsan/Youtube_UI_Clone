import 'dart:js';

import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/pages/collection_page/collection_page.dart';
import 'package:youtube_ui_clone/pages/favorite_page/favorite_page.dart';
import 'package:youtube_ui_clone/pages/history_page/history_page.dart';
import 'package:youtube_ui_clone/pages/home_page/home_page.dart';
import 'package:youtube_ui_clone/routers/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(HomePage());
    case CollectionPageRoute:
      return _getPageRoute(CollectionPage());
    case HistoryPageRoute:
      return _getPageRoute(HistoryPage());
    case FavoritePageRoute:
      return _getPageRoute(FavoritePage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
