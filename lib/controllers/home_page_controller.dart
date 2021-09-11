import 'package:get/get.dart';

class HomePageController extends GetxController {
  static HomePageController instance = Get.find();
  var isDrawerOpen = false.obs;

  set openDrawer(bool isOpen) => this.isDrawerOpen.value = isOpen;
}
