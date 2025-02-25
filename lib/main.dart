import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await windowManager.ensureInitialized();

  // windowManager.waitUntilReadyToShow().then((_) async {
  //   await windowManager.setFullScreen(true);

  //   await windowManager.setResizable(true);

  //   await windowManager.setMaximizable(true);

  //   await windowManager.setMinimizable(true);
  // });

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

