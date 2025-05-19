

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_lab_2/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
      ),
      body: Center(
        //GetBuilder way
        // child: GetBuilder<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('you have pushed the button this many time'),
        //         Text(
        //           '${controller.counter}',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         ElevatedButton(onPressed: () {
        //           controller.incrementCounter();
                
        //         }, 
        //         child: Text('+'),
        //         ),
        //       ],
        //     );
        //   },
        //   ),


        //GetX way

        //  child: GetX<HomeController>(
        //   init: HomeController(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('you have pushed the button this many time'),
        //         Text(
        //           '${controller.counter}',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //         ),
        //         ElevatedButton(onPressed: () {
        //           controller.incrementCounter();
                
        //         }, 
        //         child: Text('+'),
        //         ),

        //           ElevatedButton(onPressed: () {
        //           controller.decrementCounter();
                
        //         }, 
        //         child: Text('-'),
        //         ),
        //       ],
        //     );
        //   },
        //   ),

          //obs way
          child: Obx( () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('you have pushed the button this many time'),
                Text(
                  '${controller.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(onPressed: () {
                  controller.incrementCounter();
                
                }, 
                child: Text('+'),
                ),

                  ElevatedButton(onPressed: () {
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



  
    
    
