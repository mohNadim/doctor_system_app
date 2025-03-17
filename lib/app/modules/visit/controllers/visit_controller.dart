import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:doctor_sys_app/app/modules/patient/controllers/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class VisitController extends GetxController {
  DateTime? patientBirth;
  late Box<Patient> patientBox;

  late TextEditingController nameCtrl;
  late TextEditingController nationalIdCtrl;
  late TextEditingController companionNameCtrl;
  late TextEditingController addressCtrl;
  late TextEditingController companionMobileCtrl;
  late TextEditingController companionNationalIdCtrl;
  late TextEditingController landlineNumberCtrl;
  late TextEditingController mobileNumberCtrl;
  late TextEditingController dateCtrl;

  Patient patientParm = Get.arguments as Patient;

  // RxString name = ''.obs;
  // RxString nationalId = ''.obs;
  // RxString companionName = ''.obs;
  // RxString address = ''.obs;
  // RxString companionMobile = ''.obs;
  // RxString companionNationalId = ''.obs;
  // RxString landlineNumber = ''.obs;
  // RxString mobileNumber = ''.obs;
  // RxString date = ''.obs;
  // RxInt age = 0.obs;

  late Rx<Patient> patient = patientParm.obs;

  @override
  void onInit() {
    super.onInit();
    init();
    update();
  }

  Future<void> init() async {
    patientBox = await Hive.openBox<Patient>('patients');

    nameCtrl = TextEditingController(
      text: patientParm.name,
    );

    addressCtrl = TextEditingController(
      text: patientParm.address ?? "",
    );

    nationalIdCtrl = TextEditingController(
      text: patientParm.nationalId,
    );

    companionNameCtrl = TextEditingController(
      text: patientParm.companionName ?? "",
    );

    companionMobileCtrl = TextEditingController(
      text: patientParm.companionMobile ?? "",
    );

    companionNationalIdCtrl = TextEditingController(
      text: patientParm.companionNationalId ?? "",
    );

    landlineNumberCtrl = TextEditingController(
      text: patientParm.landlineNumber ?? "",
    );

    mobileNumberCtrl = TextEditingController(
      text: patientParm.mobileNumber.toString(),
    );

    dateCtrl = TextEditingController(
      text: DateFormat('dd/MM/yyyy').format(patientParm.birthDate),
    );
  }

  void editPatient() {
    patient.value = Patient(
      name: nameCtrl.text,
      birthDate: patientBirth ?? patientParm.birthDate,
      address: addressCtrl.text,
      mobileNumber: mobileNumberCtrl.text,
      nationalId: nationalIdCtrl.text,
      companionMobile: companionMobileCtrl.text.trim().isEmpty
          ? null
          : companionMobileCtrl.text,
      companionName:
          companionNameCtrl.text.trim().isEmpty ? null : companionNameCtrl.text,
      companionNationalId: companionNationalIdCtrl.text.trim().isEmpty
          ? null
          : companionNationalIdCtrl.text,
      landlineNumber: landlineNumberCtrl.text.trim().isEmpty
          ? null
          : landlineNumberCtrl.text,
    );
    patientBox.put(
      patientParm.nationalId,
      patient.value,
    );

    Get.find<PatientController>().loadData();

    Get.back();
  }

  @override
  void onClose() {
    nameCtrl.dispose();
    companionNameCtrl.dispose();
    addressCtrl.dispose();
    companionMobileCtrl.dispose();
    companionNationalIdCtrl.dispose();
    landlineNumberCtrl.dispose();
    mobileNumberCtrl.dispose();
    nationalIdCtrl.dispose();
    dateCtrl.dispose();
    super.onClose();
  }
}


















// import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive/hive.dart';
// import 'package:intl/intl.dart';

// class VisitController extends GetxController {
//   DateTime? patientBirth;

//   late Box<Patient> patientBox;

//   late TextEditingController nameCtrl;

//   late TextEditingController nationalIdCtrl;

//   late TextEditingController companionNameCtrl;

//   late TextEditingController addressCtrl;

//   late TextEditingController companionMobileCtrl;

//   late TextEditingController companionNationalIdCtrl;

//   late TextEditingController landlineNumberCtrl;

//   late TextEditingController mobileNumberCtrl;

//   late TextEditingController dateCtrl;

//   late Patient patientParm;

//   void editPatient() {
//     patientParm = Patient(
//       name: nameCtrl.text,
//       nationalId: patientParm.nationalId,
//       birthDate: patientBirth ?? patientParm.birthDate,
//       address: addressCtrl.text,
//       mobileNumber: mobileNumberCtrl.text,
//       companionMobile: companionMobileCtrl.text,
//       companionName: companionNameCtrl.text,
//       companionNationalId: companionNationalIdCtrl.text,
//       landlineNumber: landlineNumberCtrl.text,
//     );
//     patientBox.put(patientParm.nationalId, patientParm);
//   }

//   Future<void> hiveInit() async {
//     await Hive.openBox<Patient>('patients');
//     patientParm = Get.arguments as Patient;
//   }

//   @override
//   void onInit() {
//     super.onInit();

//     hiveInit();

//     nameCtrl = TextEditingController();
//     nameCtrl.text = patientParm.name;

//     addressCtrl = TextEditingController();
//     addressCtrl.text = patientParm.address!;

//     nationalIdCtrl = TextEditingController();
//     nationalIdCtrl.text = patientParm.nationalId;

//     companionNameCtrl = TextEditingController();
//     companionNameCtrl.text = patientParm.companionName ?? "";

//     companionMobileCtrl = TextEditingController();
//     companionMobileCtrl.text = patientParm.companionMobile ?? "";

//     companionNationalIdCtrl = TextEditingController();
//     companionNationalIdCtrl.text = patientParm.companionNationalId ?? "";

//     landlineNumberCtrl = TextEditingController();
//     landlineNumberCtrl.text = patientParm.landlineNumber ?? "";

//     mobileNumberCtrl = TextEditingController();
//     mobileNumberCtrl.text = patientParm.mobileNumber.toString();

//     dateCtrl = TextEditingController();
//     dateCtrl.text = DateFormat('dd/MM/yyyy').format(patientParm.birthDate);
//   }

//   @override
//   void onClose() {
//     super.onClose();
//     nameCtrl.dispose();
//     companionNameCtrl.dispose();
//     addressCtrl.dispose();
//     companionMobileCtrl.dispose();
//     companionNationalIdCtrl.dispose();
//     landlineNumberCtrl.dispose();
//     mobileNumberCtrl.dispose();
//     nationalIdCtrl.dispose();
//     dateCtrl.dispose();
//   }
// }