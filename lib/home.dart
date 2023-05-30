import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_fm/logic/appLogic.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Applogic _applogic = Get.put(Applogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'NewsApp',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.dark_mode,
            color: Colors.black,
          )
        ],
      ),
      body: Obx(() => _applogic.Screens[_applogic.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            showUnselectedLabels: true,
            selectedIconTheme:
                const IconThemeData(color: Colors.orange, size: 35),
            unselectedIconTheme:
                const IconThemeData(color: Colors.grey, size: 30),
            //    unselectedLabelStyle: const TextStyle(color: Colors.black),
            currentIndex: _applogic.currentIndex.value,
            fixedColor: Colors.black,
            onTap: (value) {
              _applogic.currentIndex.value = value;
              print(_applogic.currentIndex);
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'business',
                  icon: Icon(
                    Icons.business_center,
                  )),
              BottomNavigationBarItem(
                  label: 'science',
                  icon: Icon(
                    Icons.science,
                  )),
              BottomNavigationBarItem(
                  label: 'sports',
                  icon: Icon(
                    Icons.sports,
                  )),
              BottomNavigationBarItem(
                  label: 'settings',
                  icon: Icon(
                    Icons.settings,
                  )),
            ]),
      ),
    );
  }
}
