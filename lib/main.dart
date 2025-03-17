import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:doctor_sys_app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(PatientAdapter());
  }

  // Hive.openBox<Patient>('patient');

  // Hive.registerAdapter(VisitAdapter());
  // Hive.registerAdapter(DrugHistoryAdapter());
  // Hive.registerAdapter(VitalSignsAdapter());
  // Hive.registerAdapter(MedicationAdapter());

  // await windowManager.ensureInitialized();

  

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme,
    ),
  );
}










// windowManager.waitUntilReadyToShow().then((_) async {
  //   await windowManager.setFullScreen(true);
  //   await windowManager.setResizable(true);
  //   await windowManager.setMaximizable(true);
  //   await windowManager.setMinimizable(true);

  //   await windowManager.setSize(const Size(800, 600)); // حدد حجمًا افتراضيًا
  //   await windowManager.setPosition(const Offset(100, 100)); // حدد موقع النافذة

  //   await windowManager.show();
  // });