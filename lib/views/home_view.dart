import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/controller/home_controller.dart';
import 'package:getx_lab_2/controller/home_controller_x.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerObx = Get.put(HomeControllerX());
    return Scaffold(
      body: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder(
            init: HomeController(),

            builder: (controller) {
              return Center(
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Builder Method", style: TextStyle(fontSize: 24)),
                      Text("counter: ${controller.counter}"),
                      Row(
                        spacing: 12,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => controller.incrementCounter(),
                            child: Text("+"),
                          ),
                          ElevatedButton(
                            onPressed: () => controller.decrementCounter(),
                            child: Text("-"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          GetX(
            init: HomeControllerX(),

            builder: (controller) {
              return Center(
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("GetX Method", style: TextStyle(fontSize: 24)),
                      Text("counter: ${controller.counter}"),
                      Row(
                        spacing: 12,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => controller.incrementCounter(),
                            child: Text("+"),
                          ),
                          ElevatedButton(
                            onPressed: () => controller.decrementCounter(),
                            child: Text("-"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Center(
            child: Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
              child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OBX Method", style: TextStyle(fontSize: 24)),
                  Text("Changes refelect on GetX Method"),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => controllerObx.incrementCounter(),
                        child: Text("+"),
                      ),
                      ElevatedButton(
                        onPressed: () => controllerObx.decrementCounter(),
                        child: Text("-"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
