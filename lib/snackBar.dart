import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Text('Rajan Kumar'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Hello!",
            "Thanks For Coming",
            icon: Icon(Icons.add),
            onTap: (snack) {},
            mainButton: TextButton(
              onPressed: () {},
              child: Text(
                "Click",
                style: TextStyle(color: Colors.black),
              ),
            ),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
