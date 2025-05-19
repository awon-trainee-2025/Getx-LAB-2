import 'package:get/get.dart';

class Homecontroller extends GetxController {
  // int counter = 0;
  var counter = 0.obs;

  void increment() => counter.value++;

  void  decrement() => counter.value--;

  // void incrementCounter() {
  //   counter++;
  //   update();
    // rather than set state
  // }
  // void decrementCounter() {
  //   counter--;
  //   update();
  //   // rather than set state
  // }
}
// getbuilder => reubild
//getx stream
// obx