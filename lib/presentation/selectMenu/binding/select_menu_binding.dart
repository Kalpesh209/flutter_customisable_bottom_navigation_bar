import 'package:flutter_customisable_bottom_navigation_bar/presentation/selectMenu/controller/select_menu_controller.dart';
import 'package:get/get.dart';

class SelectMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectMenuController>(() => SelectMenuController());
  }
}
