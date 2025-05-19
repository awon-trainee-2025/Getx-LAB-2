import 'package:get/get.dart';

class HomeController extends GetxController{
 /* int counter = 0;
void incrementCounter(){
  counter++;
  update();
  // setState((){
  //_counter++;
  });*/
  var counter = 0.obs;
  void incrementCounter(){
    counter++;
  }
  void decrementCounter(){
    counter--;
  }
}