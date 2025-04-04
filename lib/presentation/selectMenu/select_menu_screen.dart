import 'package:flutter/material.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/selectMenu/controller/select_menu_controller.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/widgets/bottomNavigationBar/screen/bottom_navigation_bar_widget.dart';
import 'package:get/get.dart';

class SelectMenuScreen extends StatefulWidget {
  SelectMenuScreen({super.key});

  @override
  State<SelectMenuScreen> createState() => _SelectMenuScreenState();
}

class _SelectMenuScreenState extends State<SelectMenuScreen> {
  final SelectMenuController selectMenuController = Get.put(
    SelectMenuController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Menu 1',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...selectMenuController.options.map((option) {
                  return RadioListTile<String>(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(option),
                    value: option,
                    groupValue: selectMenuController.selectedMenu1.value,
                    onChanged: (value) {
                      selectMenuController.selectMenu1(value!);
                    },
                  );
                }).toList(),
                const SizedBox(height: 20),
                const Text(
                  'Menu 2',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...selectMenuController.options.map((option) {
                  return RadioListTile<String>(
                    title: Text(option),
                    value: option,
                    groupValue: selectMenuController.selectedMenu2.value,
                    onChanged:
                        selectMenuController.isDisabledInMenu2(option)
                            ? null // Disable if selected in Menu 1
                            : (value) {
                              selectMenuController.selectMenu2(value!);
                            },
                    secondary:
                        selectMenuController.isDisabledInMenu2(option)
                            ? null
                            : null,
                    controlAffinity: ListTileControlAffinity.trailing,
                  );
                }).toList(),
                Spacer(),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BottomNavigationBarWidget(
                              selectedMenu1:
                                  selectMenuController.selectedMenu1.value,
                              selectedMenu2:
                                  selectMenuController.selectedMenu2.value,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
