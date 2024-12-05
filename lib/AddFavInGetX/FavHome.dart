import 'package:first_tutorial1/AddFavInGetX/FavoriteController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favhome extends StatefulWidget {
  const Favhome({super.key});

  @override
  State<Favhome> createState() => _FavhomeState();
}

class _FavhomeState extends State<Favhome> {
  Favoritecontroller favoritecontroller = Get.put(Favoritecontroller());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add-In-Favorite"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: favoritecontroller.fruitsList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (favoritecontroller.tempFruits.contains(
                        favoritecontroller.fruitsList[index].toString())) {
                      favoritecontroller.removeFromFavorite(
                          favoritecontroller.fruitsList[index].toString());
                    } else {
                      favoritecontroller.addToFavorite(
                          favoritecontroller.fruitsList[index].toString());
                    }
                  },
                  title: Text(favoritecontroller.fruitsList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: favoritecontroller.tempFruits.contains(
                              favoritecontroller.fruitsList[index].toString())
                          ? Colors.red
                          : Color.fromARGB(255, 231, 222, 222),
                    ),
                  )),
            );
          }),
    );
  }
}
