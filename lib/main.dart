import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_navigation/pages/creat_page.dart';
import 'package:getx_pattern_navigation/pages/home_page.dart';
import 'package:getx_pattern_navigation/service/dii_services.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialBinding: ControllersBinding(),
      getPages: [
        GetPage(name: "/HomePage", page: () =>  HomePage()),
        GetPage(name: "/CreatePage", page: () =>  CreatPage())
      ],
    );
  }
}
