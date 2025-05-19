import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeControllerX extends GetxController {
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
    if (counter < 0) counter = 0.obs;
  }
}
