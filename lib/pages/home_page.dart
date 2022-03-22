import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final HomePageController controller = Get.put(HomePageController());
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  '${controller.counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                )),
            const SizedBox(height: 30),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 152, 172),
                  padding: const EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  Get.to(() => AboutPage(), transition: Transition.cupertino);
                  Get.snackbar('GetX Snackbar', 'Welcome to About Page !',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.white,
                      duration: const Duration(seconds: 1));
                },
                child: const Text(
                  'About GetX',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                )),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  Get.snackbar(
                    'GetX Snackbar',
                    'Yay! Awesome GetX Snackbar',
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.white,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'Show Snackbar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                )),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 18, 110, 101),
                padding: const EdgeInsets.all(10.0),
              ),
              onPressed: () {
                Get.defaultDialog(
                    title: 'GetX Alert',
                    middleText: 'Simple GetX alert',
                    textConfirm: 'Okay',
                    confirmTextColor: Colors.white,
                    textCancel: 'Cancel');
              },
              child: const Text(
                'Show AlertDialog',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            heroTag: 'increment',
            onPressed: controller.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            heroTag: 'decrement',
            onPressed: controller.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey,
            heroTag: 'reset',
            onPressed: controller.reset,
            tooltip: 'Reset',
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
