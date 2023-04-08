import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx Tutorial'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: TextButton(
                    onPressed: () {
                      Get.toNamed('/screenOne');
                      //Get.to(ScreenOne(name: 'Maskey'));
                      //Get.to(ScreenOne(name: 'maskey'));
                    },
                    child: Text('Next Screen')))
          ],
        ));
  }
}
