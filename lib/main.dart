import 'package:first_tutorial1/dialogAlert.dart';
import 'package:first_tutorial1/homeScreen.dart';
import 'package:first_tutorial1/snackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Dialogalert(),
    );
  }
}
