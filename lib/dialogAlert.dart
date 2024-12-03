import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogalert extends StatefulWidget {
  const Dialogalert({super.key});

  @override
  State<Dialogalert> createState() => _DialogalertState();
}

class _DialogalertState extends State<Dialogalert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Alert"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("GetX Dialog Alert with GetX"),
              onTap: () {
                // Get.defaultDialog(
                //   title: 'Delete Chat',
                //   titlePadding: EdgeInsets.only(top: 20),
                //   contentPadding: EdgeInsets.all(20),
                //   middleText: 'Are you sure you want to delete this Chat',
                //   confirm: TextButton(
                //     onPressed: () {
                //       Get.back();
                //     },
                //     child: Text("Ok"),
                //   ),
                //   cancel: TextButton(
                //     onPressed: () {},
                //     child: Text("cancel"),
                //   ),
                // );
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
