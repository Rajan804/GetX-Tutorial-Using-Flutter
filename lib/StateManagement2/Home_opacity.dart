import 'package:first_tutorial1/StateManagement2/opacity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeOpacity extends StatefulWidget {
  const HomeOpacity({super.key});

  @override
  State<HomeOpacity> createState() => _HomeOpacityState();
}

class _HomeOpacityState extends State<HomeOpacity> {
  OpacityController opacityController = Get.put(OpacityController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Opacity"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(opacityController.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: opacityController.opacity.value,
              onChanged: (value) {
                opacityController.setOpacity(value);
              }))
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
