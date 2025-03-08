import 'package:get/get.dart';

import '../controllers/patient_controller.dart';

class PatientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatientController>(
      () => PatientController(),
    );
  }
}
