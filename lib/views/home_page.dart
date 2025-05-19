import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_lab_2/views/home_controller.dart';

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Center(
        // child: GetBuilder<HomeController>(

        //   init: HomeController(),

        //   builder: (controller) {

        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[

        //         Text('${controller.counter}'),
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

        //   child: GetX<HomeController>(

        //   init: HomeController(),

        //   builder: (controller) {

        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[

        //         Text('${controller.counter}'),
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
        child: Obx(
          // init: HomeController(),
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${controller.counter}'),
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
            );
          },
        ),
      ),
    );
  }
}
