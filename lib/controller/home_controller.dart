import 'package:get/get.dart';

class HomeController extends GetxController {
  //int counter = 0;

  //void incrementController() {
  //  counter++;
  //  update();S
  //}

  // void decremantController() {
  //  counter--;
  //  update();
  //}

  var count = 0.obs;

  void increment() => count.value++;
  void decrement() => count.value--;
}
