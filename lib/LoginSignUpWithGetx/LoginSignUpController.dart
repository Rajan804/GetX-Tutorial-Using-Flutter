import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Loginsignupcontroller extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        'email': emailController.value.text,
        'password': passController.value.text,
      });

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar("Login Successfull", 'Congratulations');
      } else {
        loading.value = false;

        Get.snackbar("Login failed", data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}
