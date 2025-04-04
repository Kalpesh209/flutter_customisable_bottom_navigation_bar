import 'package:flutter/material.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/calender/calender_screen.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/histroy/histroy_screen.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/homePage/home_page_screen.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/menu/menu_screen.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/usb/usb_screen.dart';
import 'package:flutter_customisable_bottom_navigation_bar/presentation/widgets/bottomNavigationBar/controller/bottom_navigation_bar_controller.dart';
import 'package:get/get.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final String selectedMenu1;
  final String selectedMenu2;
  BottomNavigationBarWidget({
    super.key,
    required this.selectedMenu1,
    required this.selectedMenu2,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final List<Widget> pages1 = [
    HomePageScreen(),
    MenusScreen(),
    CalenderScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];
  final List<Widget> pages2 = [
    MenusScreen(),
    HomePageScreen(),
    CalenderScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];

  final List<Widget> pages3 = [
    CalenderScreen(),
    HomePageScreen(),
    MenusScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];

  final List<Widget> pages4 = [
    CalenderScreen(),
    MenusScreen(),
    HomePageScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];

  final List<Widget> pages5 = [
    MenusScreen(),
    CalenderScreen(),
    HomePageScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];
  final List<Widget> pages6 = [
    HomePageScreen(),
    CalenderScreen(),
    MenusScreen(),
    HistroyScreen(),
    UsbScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavigationBarItemList = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.usb_off_rounded), label: ''),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarController bottomNavigationBarController = Get.put(
      BottomNavigationBarController(),
    );
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: bottomNavigationBarItemList,
          currentIndex: bottomNavigationBarController.selectedIndex.value,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: bottomNavigationBarController.onChangeTab,
        ),
      ),
      body: Obx(() {
        return IndexedStack(
          index: bottomNavigationBarController.selectedIndex.value,
          children:
              widget.selectedMenu1 == 'Market' &&
                      widget.selectedMenu2 == 'Discover'
                  ? pages1
                  : widget.selectedMenu1 == 'Option Chain' &&
                      widget.selectedMenu2 == 'Market'
                  ? pages3
                  : widget.selectedMenu1 == 'Option Chain' &&
                      widget.selectedMenu2 == 'Discover'
                  ? pages4
                  : widget.selectedMenu1 == 'Discover' &&
                      widget.selectedMenu2 == 'Option Chain'
                  ? pages5
                  : widget.selectedMenu1 == 'Market' &&
                      widget.selectedMenu2 == 'Option Chain'
                  ? pages6
                  : pages2,
        );
      }),
    );
  }
}
