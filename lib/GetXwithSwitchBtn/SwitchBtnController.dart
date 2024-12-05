import 'package:get/get.dart';

class Switchbtncontroller extends GetxController {
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
  }
}
