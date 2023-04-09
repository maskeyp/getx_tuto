import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_tut/opacity_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  OpacityController opacityController = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Tutorial'),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 250,
              width: 180,
              color: Colors.red.withOpacity(opacityController.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: opacityController.opacity.value,
              onChanged: (value) {
                opacityController.setOpacity(value);
              })),
        ],
      ),
    );
  }
}
