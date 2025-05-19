import 'package:get/get.dart';

class HomeController extends GetxController {
  //getBuilder
  // int counter = 0;

  // void incrementCounter() {
  //   counter++;
  //   update();
  // }

  // void decrementCounter() {
  //   counter--;
  //   update();

  // }

  //GetX and Obx
  var counter = 0.obs;
  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }
}
