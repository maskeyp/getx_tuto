import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Tutorial'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Obx(
                () => Text(
                  controller.counter.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.decrementCounter();
                    },
                    child: const Icon(Icons.minimize)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      controller.incrementCounter();
                    },
                    child: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
