import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/controller/home_controller.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(/*
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                const Text('you have pushed the button tthis many times:'),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed:(){
                    controller.incrementCounter();
                  }, 
                  child:Text('+'))
              ],
            );
          },
        ),*/
        /* child: GetX<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                const Text('you have pushed this many times:'),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed: (){
                    controller.incrementCounter();
                  },
                   child: Text('+'),
                   ),
                   Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed: (){
                    controller.decrementCounter();
                  },
                   child: Text('-'),
                   ),
              ],
            );
          },
          ),*/
          child: Obx(
            ()=> Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('you have pushed the button this many times:'),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed: (){
                    controller.incrementCounter();
                  },
                   child: Text('+'),
                   ),
                   Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                  onPressed: (){
                    controller.decrementCounter();
                  },
                   child: Text('-'),
                   ),
              ],
            )
          ),
      ),
    );
  }
}