import 'package:first_tutorial1/RoutINGetx/screen_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx-Rout"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                // Get.to(ScreenOne(
                //   name: " Rajan",
                // ));
                Get.toNamed(
                  '/ScreenOne',
                  arguments: ['Hello Everybody', 'My Name is Rajan'],
                );
              },
              child: Text("Go to next Screen"),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
