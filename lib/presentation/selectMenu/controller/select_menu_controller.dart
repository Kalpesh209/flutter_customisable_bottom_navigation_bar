import 'package:get/get.dart';

class SelectMenuController extends GetxController {
  // List<String> options = [
  //   'Market',
  //   'Discover',
  //   'Option Chain',
  // ];
  // String? selectedMenu1 = 'Market';
  // String? selectedMenu2 = 'Discover';

  List<String> options = ['Market', 'Discover', 'Option Chain'];

  var selectedMenu1 = 'Market'.obs;
  var selectedMenu2 = 'Discover'.obs;

  void selectMenu1(String value) {
    selectedMenu1.value = value;
    // If same option selected in Menu2, clear it
    if (selectedMenu2.value == value) {
      selectedMenu2.value = '';
    }
  }

  void selectMenu2(String value) {
    selectedMenu2.value = value;
  }

  bool isDisabledInMenu2(String value) {
    return selectedMenu1.value == value;
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
