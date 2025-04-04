import 'package:flutter_customisable_bottom_navigation_bar/presentation/widgets/bottomNavigationBar/controller/bottom_navigation_bar_controller.dart';
import 'package:get/get.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(
      () => (BottomNavigationBarController()),
    );
  }
}
