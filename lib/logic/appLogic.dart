import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_fm/bussiness.dart';
import 'package:news_app_fm/science.dart';
import 'package:news_app_fm/seeting.dart';
import 'package:news_app_fm/sports.dart';

class Applogic extends GetxController {
  RxInt currentIndex = 0.obs;
  List<Widget> Screens = [
    const BusniessScreen(),
    const ScinceScreen(),
    const SportsScreen(),
    const SettingScreen(),
  ];
}
