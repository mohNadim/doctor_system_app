import 'package:doctor_sys_app/app/modules/visit/controllers/visit_controller.dart';
import 'package:doctor_sys_app/core/widgets/button.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditPatientView extends GetView<VisitController> {
  const EditPatientView({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: controller.formKey,
      child: Container(
        height: 500,
        width: 700,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                'assets/images/profile.svg',
                width: 250,
              ),
              SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ": عدّل معلومات المريض",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Field(
                      required: true,
                      controller: controller.nameCtrl,
                      hintText: 'اسم المريض...',
                      label: ': اسم المريض',
                      validator: (String? value) =>
                          value!.trim().isEmpty ? "الحق فارغ" : null,
                    ),
                    Field(
                      required: true,
                      controller: controller.nationalIdCtrl,
                      hintText: 'الرقم الوطني...',
                      label: ': الرقم الوطني',
                      validator: (String? value) =>
                          !GetUtils.isNum(value!) ? "الحقل لادخال رقم" : null,
                    ),
                    Field(
                      required: true,
                      controller: controller.mobileNumberCtrl,
                      hintText: '09xxxxxxxx',
                      label: ': رقم الموبايل',
                      validator: (String? value) =>
                          !GetUtils.isNum(value!) ? "هذا ليس رقم موبايل" : null,
                    ),
                    Field(
                      controller: controller.landlineNumberCtrl,
                      hintText: '011xxxxxxx',
                      label: ': رقم الهاتف',
                      validator: (String? value) {
                        if (value!.trim().isEmpty) {
                          return null;
                        }
                        if (!GetUtils.isNum(value)) {
                          return "هذا ليس رقماً";
                        }
                        return null;
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        controller.patientBirth = await Get.dialog(
                          DatePickerDialog(
                            firstDate: DateTime(1800),
                            lastDate: DateTime.now(),
                            initialCalendarMode: DatePickerMode.year,
                            initialEntryMode: DatePickerEntryMode.calendarOnly,
                          ),
                        );

                        // controller.dateCtrl.text = DateFormat('dd/MM/yyyy')
                        //     .format(controller.patientBirth ?? DateTime.now());
                      },
                      child: Field(
                        required: true,
                        controller: controller.dateCtrl,
                        hintText: "إضغط لاختيار التاريخ",
                        enabled: false,
                        label: ': تاريخ الميلاد',
                      ),
                    ),
                    Field(
                      required: true,
                      controller: controller.addressCtrl,
                      hintText: 'اكتب عنوان المريض بالتفصيل...',
                      label: ': عنوان المريض',
                      maxLine: 4,
                      validator: (String? value) {
                        if (controller.addressCtrl.text.trim().isEmpty) {
                          return "الحقل فارغ";
                        }
                        return null;
                      },
                    ),
                    Field(
                      controller: controller.companionNameCtrl,
                      hintText: 'اسم المرافق...',
                      label: ': اسم المرافق',
                    ),
                    Field(
                      controller: controller.companionNationalIdCtrl,
                      hintText: 'رقم المرافق الوطني...',
                      label: ': رقم المرافق الوطني',
                    ),
                    Field(
                      controller: controller.companionMobileCtrl,
                      hintText: '09xxxxxxxx',
                      label: ': رقم موبايل المرافق',
                      validator: (String? value) {
                        if (controller.companionMobileCtrl.text.isEmpty) {
                          return null;
                        }

                        if (!GetUtils.isNum(value!)) {
                          return "هذا ليس رقم هاتف";
                        }

                        return null;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButtun(
                          onPressed: () {
                            controller.editPatient();
                          },
                          txt: "تعديل",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

 
  }
}
