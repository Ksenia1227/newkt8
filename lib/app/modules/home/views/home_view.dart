import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
          IconButton(onPressed: () => controller.logout(), icon: const Icon(Icons.logout))
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