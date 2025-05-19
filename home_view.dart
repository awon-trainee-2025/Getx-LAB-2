import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_lab/controller/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController(); // تعريف المتغير

    return Scaffold(
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
                  controller.incrementcounter();
                },
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.decrementCenter(); // تم التصحيح هنا
                },
                child: Text('_'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
