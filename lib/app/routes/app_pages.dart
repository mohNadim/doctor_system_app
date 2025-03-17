import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/patient/bindings/patient_binding.dart';
import '../modules/patient/views/add_patient_view.dart';
import '../modules/patient/views/patient_view.dart';
import '../modules/visit/bindings/visit_binding.dart';
import '../modules/visit/views/visit_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT,
      page: () => const PatientView(),
      binding: PatientBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PATIENT,
      page: () => AddPatientView(),
      binding: PatientBinding(),
    ),
    GetPage(
      name: _Paths.VISIT,
      page: () => const VisitView(),
      binding: VisitBinding(),
    ),
  ];
}
