import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_tutorial1/RoutINGetx/screen_two.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One" + Get.arguments[1]),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.to(ScreenTwo(), arguments: ['name']);
              },
              child: Text("Go-To-Screen-Two"),
            ),
          ),
        ],
      ),
    );
  }
}
