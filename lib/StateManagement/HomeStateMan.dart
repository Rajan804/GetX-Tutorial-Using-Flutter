import 'dart:async';

import 'package:first_tutorial1/StateManagement/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homestateman extends StatefulWidget {
  const Homestateman({super.key});

  @override
  State<Homestateman> createState() => _HomestatemanState();
}

class _HomestatemanState extends State<Homestateman> {
  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   x++;
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management Getx"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Obx(
              () => Text(
                controller.counter.toString(),
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(index.toString()),
                    );
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
      }),
    );
  }
}
