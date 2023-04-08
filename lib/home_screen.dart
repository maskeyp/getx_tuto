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
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Important', 'Youre learning getx ');
      }),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx Dialog Alert'),
              subtitle: const Text('Getx Dialog'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Are you Sure?',
                    confirm: TextButton(
                      onPressed: () {
                        //Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('No'),
                    ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Dialog Alert'),
              subtitle: const Text('Getx Dialog'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(children: [
                    ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        }),
                    ListTile(
                      leading: const Icon(Icons.dark_mode),
                      title: const Text('Dark Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                  ]),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
