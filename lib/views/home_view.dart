import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        // GetBuilder
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
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.incrementCounter();
        //               },
        //               child: Text("+"),
        //             ),
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.decrementCounter();
        //               },
        //               child: Text("-"),
        //             ),
        //           ],
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // GetX
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
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.incrementCounter();
        //               },
        //               child: const Text("+"),
        //             ),
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.decrementCounter();
        //               },
        //               child: const Text("-"),
        //             ),
        //           ],
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // Obx
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.incrementCounter();
                    },
                    child: const Text("+"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.decrementCounter();
                    },
                    child: const Text("-"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
