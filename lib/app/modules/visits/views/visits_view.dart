import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/visits_controller.dart';

class VisitsView extends GetView<VisitsController> {
  const VisitsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VisitsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VisitsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
