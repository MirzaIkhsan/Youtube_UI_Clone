import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routers/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = HomePageRoute.obs;
  var hoverItem = ''.obs;

  set changeActiveItemTo(String itemName) => this.activeItem.value = itemName;

  bool isActive(String itemName) => this.activeItem.value == itemName;
  bool isHovering(String itemName) => this.hoverItem.value == itemName;

  void onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case HomePageRoute:
        return _customIcon(Icons.home_outlined, itemName);
      case CollectionPageRoute:
        return _customIcon(Icons.video_collection_outlined, itemName);
      case HistoryPageRoute:
        return _customIcon(Icons.history_outlined, itemName);
      case FavoritePageRoute:
        return _customIcon(Icons.favorite_outline, itemName);
      default:
        return _customIcon(Icons.home_outlined, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: Colors.white,
      );
    return Icon(
      icon,
      size: 22,
      color: isHovering(itemName) ? Colors.white : Colors.white,
    );
  }
}
