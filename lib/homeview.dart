import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_lab_2/homecontroller.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key, required this.title});

  final String title;

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final Homecontroller controller = Homecontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // child: GetBuilder<Homecontroller>(
        //   init: Homecontroller(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         Text(""),
        //         Text('${controller.counter}',
        //         style: Theme.of(context).textTheme.headlineLarge,),
        //         ElevatedButton(onPressed: (){
        //           controller.incrementCounter();
        //         }, child:Text('+'),),
        //          ElevatedButton(onPressed: (){
        //           controller.decrementCounter();
        //         }, child:Text('-'),)
        //       ],

        //     );
        //   },
        // ),
        // child: GetX<Homecontroller>(
        //   init: Homecontroller(),
        //   builder: (controller) {
        //     return Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         Text("you should push this buttom"),
        //         Text(
        //           '${controller.counter}',
        //           style: Theme.of(context).textTheme.headlineLarge,
        //         ),

        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.increment();
        //               },
        //               child: Text('+'),
        //             ),
        //             SizedBox(width: 16),
        //             ElevatedButton(
        //               onPressed: () {
        //                 controller.decrement();
        //               },
        //               child: Text('-'),
        //             ),
        //           ],
        //         ),
        //       ],
        //     );
        //   },
        // ),
        child: Obx(()=> 
        Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("you should push this buttom"),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        controller.increment();
                      },
                      child: Text('+'),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      child: Text('-'),
                    ),
                  ],
                ),
              ],
            
          
        ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
