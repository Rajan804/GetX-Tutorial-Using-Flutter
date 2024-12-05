import 'package:first_tutorial1/GetXwithSwitchBtn/SwitchBtnController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Swithbtnhome extends StatefulWidget {
  const Swithbtnhome({super.key});

  @override
  State<Swithbtnhome> createState() => _SwithbtnhomeState();
}

class _SwithbtnhomeState extends State<Swithbtnhome> {
  Switchbtncontroller switchbtncontroller = Get.put(Switchbtncontroller());

  //bool notification = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx-With-Swith-Botton"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notification"),
              Obx(() => Switch(
                  value: switchbtncontroller.notification.value,
                  onChanged: (value) {
                    //notification = value;
                    switchbtncontroller.setNotification(value);
                  }))
            ],
          )
        ],
      ),
    );
  }
}
