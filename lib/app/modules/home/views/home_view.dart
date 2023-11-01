import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newkt8/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная страница'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => Get.offNamed(Routes.SIGNIN), icon: const Icon(Icons.account_circle))
        ],
      ),
      body: const Center(
        child: Column(
          children: [
          SizedBox(height: 24,),
          Text(
            'Главная страница',
            style: TextStyle(fontSize: 23),
          ),
          ],
        ),
        )
    );
  }
}