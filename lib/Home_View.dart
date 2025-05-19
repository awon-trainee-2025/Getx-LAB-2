import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:getx_lab_2/Home_Controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController()); 

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
      ),
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
        //         ElevatedButton(
        //           onPressed: () {
        //             controller.decrementCounter();
        //           },
        //           child: Text('-'),
        //         ),
        //       ],
        //     );
        //   },
         
         // child:GetX<HomeController>(
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
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrementCounter();
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
