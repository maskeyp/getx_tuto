import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/favorite_controller.dart';
import 'package:getx_tut/notification_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavoriteController controller = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx Tutorial'),
        ),
        body: ListView.builder(
            itemCount: controller.fruitList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    if (controller.tempFruitList
                        .contains(controller.fruitList[index].toString())) {
                      controller.removeFromFavorite(
                          controller.fruitList[index].toString());
                    } else {
                      controller.addToFavorite(
                          controller.fruitList[index].toString());
                    }
                  },
                  title: Text(controller.fruitList[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      color: controller.tempFruitList
                              .contains(controller.fruitList[index].toString())
                          ? Colors.red
                          : Colors.white,
                    ),
                  ),
                ),
              );
            }));
  }
}
