import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_lab_2/controller/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        // 1- GetBuilder Method

        // child: GetBuilder<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('You have pushed the button this many times:'),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ), // Text
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.incrementCounter();
        //           },
        //           child: Text('+'),
        //         ),

        //         ElevatedButton(
        //           onPressed: () {
        //             controller.decrementCounter();
        //           },
        //           child: Text('-'),
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // 2- GetX Method

        // child: GetX<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('You have pushed the button this many times:'),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.incrementCounter();
        //           },
        //           child: Text('+'),
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.decrementCounter();
        //           },
        //           child: Text('-'),
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // 3- Obx Method
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrementCounter();
                },
                child: Text('-'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
