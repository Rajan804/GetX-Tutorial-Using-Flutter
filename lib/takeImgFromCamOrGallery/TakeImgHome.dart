import 'dart:io';

import 'package:first_tutorial1/takeImgFromCamOrGallery/img_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Takeimghome extends StatefulWidget {
  const Takeimghome({super.key});

  @override
  State<Takeimghome> createState() => _TakeimghomeState();
}

class _TakeimghomeState extends State<Takeimghome> {
  ImgPickerController imgPickerController = Get.put(ImgPickerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Take the Image from Camera"),
          centerTitle: true,
        ),
        body: Obx(
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: imgPickerController.imagePath.isNotEmpty
                        ? FileImage(
                            File(imgPickerController.imagePath.toString()))
                        : null,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      imgPickerController.getImage();
                    },
                    child: Text("Pick Image"))
              ],
            );
          },
        ));
  }
}
