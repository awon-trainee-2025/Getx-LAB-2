import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/Controller/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  //get builder
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), 
      body: Center(
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
        //           child: const Text('+'),

        //         ),
                
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.discrementCounter();
        //           },
        //           child: const Text('-'),
        //         ),
        //       ], 
        //     ); 
        //   },
        // ),
        child: Obx(
          ()=>Column(
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
                  child: const Text('+'),

                ),
                
                ElevatedButton(
                  onPressed: () {
                    controller.discrementCounter();
                  },
                  child: const Text('-'),
                ),
              ], 
            ), 
        ),
      ),  
    ); 
  }
}