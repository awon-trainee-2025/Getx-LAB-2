import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_lab_2/home_controller.dart';

import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
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
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.incrementCounter();
        //           },
        //           child: Text('+'),
        //         ),
        //       ],
        //     );
        //   },

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