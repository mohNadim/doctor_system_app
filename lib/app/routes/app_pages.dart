import 'package:get/get.dart';

import '../modules/appointments/bindings/appointments_binding.dart';
import '../modules/appointments/views/appointments_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/patients/bindings/patients_binding.dart';
import '../modules/patients/views/patients_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/visits/bindings/visits_binding.dart';
import '../modules/visits/views/visits_view.dart';

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
      name: _Paths.PATIENTS,
      page: () => const PatientsView(),
      binding: PatientsBinding(),
    ),
    GetPage(
      name: _Paths.VISITS,
      page: () => const VisitsView(),
      binding: VisitsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENTS,
      page: () => const AppointmentsView(),
      binding: AppointmentsBinding(),
    ),
  ];
}
