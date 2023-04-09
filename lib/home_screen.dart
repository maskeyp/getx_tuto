import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/notification_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NotificationController notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx Tutorial'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Notification'),
            Obx(
              () => Switch(
                  value: notificationController.notification.value,
                  onChanged: (value) {
                    notificationController.setNotification(value);
                  }),
            )
          ],
        ));
  }
}
