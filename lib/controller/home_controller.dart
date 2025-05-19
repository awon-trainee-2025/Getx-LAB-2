import 'package:get/get.dart';

class HomeController extends GetxController {
//GetBuilder WAY
// int counter = 0;

//GetX WAY
 var counter =0.obs;

  void incrementCounter() {
    counter++;
    update();

  }

    void dencrementCounter() {
    counter--;
    update();

  }
}