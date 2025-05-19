import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;
  void incrementcounter() {
    counter++;
    update();
  }
  void decrementCenter() {
    counter--;
    update();
  }
}