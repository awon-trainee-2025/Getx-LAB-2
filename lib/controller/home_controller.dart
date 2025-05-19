import 'package:get/get.dart';

class HomeController extends GetxController {
  // 1- GetBuilder Method

  // int counter = 0;

  // void incrementCounter() {
  //   counter++;
  //   update();
  //   // setState(() {
  //   //   _counter++;
  //   // });
  // }

  // void decrementCounter() {
  //   counter--;
  //   update();
  //   // setState(() {
  //   //   _counter;
  //   // });
  // }

  // 2- GetX Method

  var counter = 0.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }
}
