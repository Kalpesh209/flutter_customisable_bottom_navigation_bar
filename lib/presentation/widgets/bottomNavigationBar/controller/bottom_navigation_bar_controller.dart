import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  var selectedIndex = 0.obs;

  onChangeTab(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
