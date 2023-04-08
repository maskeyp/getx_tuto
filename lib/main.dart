import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_tut/screen_one.dart';
import 'package:getx_tut/sscreen_two.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(
            name: '/screenOne',
            page: () => ScreenOne(
                  name: 'Maskey',
                )),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      ],
    );
  }
}
