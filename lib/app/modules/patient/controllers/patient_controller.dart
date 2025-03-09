import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

class PatientController extends GetxController {
  late Box<Patient> patientBox;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DateTime? patientBirth;

  late TextEditingController nameCtrl;

  late TextEditingController nationalIdCtrl;

  late TextEditingController companionNameCtrl;

  late TextEditingController addressCtrl;

  late TextEditingController companionMobileCtrl;

  late TextEditingController companionNationalIdCtrl;

  late TextEditingController landlineNumberCtrl;

  late TextEditingController mobileNumberCtrl;

  late TextEditingController dateCtrl;

  var patients = <Patient>[].obs;

  RxString searchQuery = ''.obs;

  List<Patient> get filteredPatients {
    return patients
        .where(
          (patient) => patient.name.toLowerCase().contains(
                searchQuery.value.toLowerCase(),
              ),
        )
        .toList();
  }

  @override
  void onInit() async {
    super.onInit();
    nameCtrl = TextEditingController();
    nationalIdCtrl = TextEditingController();
    companionNameCtrl = TextEditingController();
    addressCtrl = TextEditingController();
    companionMobileCtrl = TextEditingController();
    companionNationalIdCtrl = TextEditingController();
    landlineNumberCtrl = TextEditingController();
    mobileNumberCtrl = TextEditingController();
    dateCtrl = TextEditingController();

    patientBox = await Hive.openBox<Patient>('patients');

    // deletData();
    loadData();
  }

  @override
  void onClose() {
    super.onClose();
    nameCtrl.dispose();
    companionNameCtrl.dispose();
    addressCtrl.dispose();
    companionMobileCtrl.dispose();
    companionNationalIdCtrl.dispose();
    landlineNumberCtrl.dispose();
    mobileNumberCtrl.dispose();
    nationalIdCtrl.dispose();
    dateCtrl.dispose();
  }

  void deletData() {
    patientBox.clear();
  }

  void addPatient() {
    if (!formKey.currentState!.validate() || patientBirth == null) {
      Get.snackbar(
        "خطأ",
        "تاريخ الولادة لم يتم إدخاله أو يوجد حقول فارغة",
        backgroundColor: Colors.white,
        margin: EdgeInsets.only(
          top: 20,
          right: Get.width * 0.4 / 2,
          left: Get.width * 0.4 / 2,
        ),
      );
      return;
    }

    Patient patient = Patient(
      name: nameCtrl.text,
      birthDate: patientBirth!,
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

    patientBox.put(patient.nationalId, patient);

    nameCtrl.clear();

    companionNameCtrl.clear();

    addressCtrl.clear();

    companionMobileCtrl.clear();

    companionNationalIdCtrl.clear();

    landlineNumberCtrl.clear();

    mobileNumberCtrl.clear();

    nationalIdCtrl.clear();

    loadData();

    Get.back();
  }

  void loadData() {
    patients.assignAll(patientBox.values.toList());
  }
}
