import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:doctor_sys_app/app/data/models/visit_model/visit_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/routes/app_pages.dart';

import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(PatientAdapter());
  Hive.registerAdapter(VisitAdapter());
  Hive.registerAdapter(DrugHistoryAdapter());
  Hive.registerAdapter(VitalSignsAdapter());
  Hive.registerAdapter(MedicationAdapter());

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
