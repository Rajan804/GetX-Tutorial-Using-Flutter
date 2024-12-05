import 'package:get/get.dart';

class Favoritecontroller extends GetxController {
  RxList<String> fruitsList =
      ['Mango', 'Orange', 'Apple', 'Papaya', 'Banana'].obs;
  RxList tempFruits = [].obs;

  addToFavorite(String value) {
    tempFruits.add(value);
  }

  removeFromFavorite(String value) {
    tempFruits.remove(value);
  }
}
