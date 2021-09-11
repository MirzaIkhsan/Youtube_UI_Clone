import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController instance = Get.find();
  var _isDrawerOpen = true.obs;

  bool get isDrawerOpen => this._isDrawerOpen.value;

  set openDrawer(bool isOpen) => this._isDrawerOpen.value = isOpen;
}
