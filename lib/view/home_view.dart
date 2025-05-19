import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Without  Controller
      //body: Center(
      //  child: Column(
      //    mainAxisAlignment: MainAxisAlignment.center,
      //    children: <Widget> [
      //      const Text('You have pushed the button this many times:'),
      //      GetBuilder<HomeController>(builder: (controller) => Text(
      //          '${controller.count}',
      //          style: Theme.of(context).textTheme.headlineMedium,
      //        )),
      //      ElevatedButton(onPressed: (){}, child: Text('+')),
      //    ],
      //  )
      //),

      // With HomeController
      //body: Center(
      //  child: GetX<HomeController>(
      //   init: HomeController(),
      //   builder: (controller) {
      //     return Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         const Text('You have pushed the button this many times:'),
      //         Text(
      //           '${controller.count}',
      //           style: Theme.of(context).textTheme.headlineMedium,
      //         ),
      //ElevatedButton(
      //  onPressed: () {
      //    // controller.incrementController();
      //    controller.incrementController();
      //  },
      //  child: const Text('+'),
      //),
      // ElevatedButton(
      //  onPressed: () {
      //    controller.decrementController();
      //  },
      //child: const Text('-'),
      // ),
      //ElevatedButton(
      //  onPressed: () {
      //    controller.increment();
      //  },
      //  child: const Text('+'),
      //),
      //ElevatedButton(
      //  onPressed: () {
      //    controller.decrement();
      // },
      // child: const Text('-'),
      // ),
      // ],
      // );
      // },
      //  ),
      //),
      // With HomeController
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrement();
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
