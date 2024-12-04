import 'package:first_tutorial1/RoutINGetx/home_screen.dart';
import 'package:first_tutorial1/RoutINGetx/screen_one.dart';
import 'package:first_tutorial1/RoutINGetx/screen_two.dart';
import 'package:first_tutorial1/dialogAlert.dart';
import 'package:first_tutorial1/homeScreen.dart';
import 'package:first_tutorial1/snackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
      //initialRoute: '/homeScreen',
      getPages: [
        GetPage(name: '/homeScreen', page: () => homeScreen()),
        GetPage(name: '/ScreenOne', page: () => ScreenOne()),
        GetPage(name: '/ScreenTwo', page: () => ScreenTwo())
      ],
    );
  }
}
