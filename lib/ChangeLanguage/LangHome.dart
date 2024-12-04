import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Langhome extends StatefulWidget {
  const Langhome({super.key});

  @override
  State<Langhome> createState() => _LanghomeState();
}

class _LanghomeState extends State<Langhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Language"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text("name".tr),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text("English")),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('Hindi', 'India'));
                  },
                  child: Text("Hindi"))
            ],
          )
        ],
      ),
    );
  }
}
