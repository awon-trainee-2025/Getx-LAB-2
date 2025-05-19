import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  int counter = 0;

  void incrementCounter() {
    counter++;
    update();
  }

  void decrementCounter() {
    counter--;
    if (counter < 0) counter = 0;
    update();
  }
}
