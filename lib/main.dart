import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_lab_2/views/home_page.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Demo',

      home: const myHome(),
    );
  }
}
