import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lab_2/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your appflutter pub add getlication.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(title: 'Flutter Demo', home: const HomeView());
  }
}
