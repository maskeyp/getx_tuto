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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Get.updateLocale(Locale('en', 'US'));
                      },
                      child: Text('English')),
                  SizedBox(width: 20),
                  OutlinedButton(
                      onPressed: () {
                        Get.updateLocale(Locale('ne', 'NP'));
                      },
                      child: Text('Nepali')),
                ],
              )
            ],
          ),
        ));
  }
}
