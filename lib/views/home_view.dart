import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
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
        // GetBuilder method
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
        //             controller.incrementGetBuilder();
        //           },
        //           child: Text('+'),
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.decrementGetBuilder();
        //           },
        //           child: Text('-'),
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // GetX method
        // child: GetX<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('GetX method:'),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.incrementGetx();
        //               },
        //               child: Text('+'),
        //             ),
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.decrementGetx();
        //               },
        //               child: Text('-'),
        //             ),
        //           ],
        //         ),
        //       ],
        //     );
        //   },
        // ),

        // Obx method
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Obx method:'),
              Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text('-'),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
