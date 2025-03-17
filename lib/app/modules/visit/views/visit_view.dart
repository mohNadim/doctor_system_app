import 'package:doctor_sys_app/app/modules/patient/views/widget/textField.dart';
import 'package:doctor_sys_app/app/modules/visit/views/edit_patient_view.dart';
import 'package:doctor_sys_app/app/modules/visit/views/widgets/visit_card.dart';
import 'package:doctor_sys_app/core/constant/constant_var.dart';
import 'package:doctor_sys_app/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/visit_controller.dart';

class VisitView extends GetView<VisitController> {
  const VisitView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VisitView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 30,
            // crossAxisAlignment: WrapCrossAlignment.center,
            // alignment: WrapAlignment.center,
            // runAlignment: WrapAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Obx(
                () => Tooltip(
                  verticalOffset: 0,
                  message:
                      "يمكنك التعديل على معلومات المريض من خلال نقرة مزدوجة",
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onDoubleTap: () => Get.dialog(Dialog(
                      child: EditPatientView(),
                    )),
                    child: VisitCard(
                      cardTitle: "بطاقة المريض",
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Wrap(
                          textDirection: TextDirection.rtl,
                          alignment: WrapAlignment.start,
                          spacing: 30,
                          children: [
                            PateintCard(
                              fieldName: 'اسم المريض',
                              content: controller.patient.value.name,
                            ),
                            PateintCard(
                              fieldName: 'عمر المريض',
                              content: controller.patient.value.age.toString(),
                            ),
                            PateintCard(
                              fieldName: 'رقم المريض الوطني',
                              content: controller.patient.value.nationalId,
                            ),
                            PateintCard(
                              fieldName: 'رقم موبايل المريض',
                              content: controller.patient.value.mobileNumber
                                  .toString(),
                            ),
                            PateintCard(
                              fieldName: 'عنوان المريض',
                              content: controller.patient.value.address!,
                            ),
                            PateintCard(
                              fieldName: 'رقم الهاتف',
                              content: controller.patient.value.landlineNumber,
                            ),
                            PateintCard(
                              fieldName: 'اسم المرافق',
                              content: controller.patient.value.companionName,
                            ),
                            PateintCard(
                              fieldName: 'رقم المرافق الوطني',
                              content:
                                  controller.patient.value.companionNationalId,
                            ),
                            PateintCard(
                              fieldName: 'رقم موبايل المرافق',
                              content: controller.patient.value.companionMobile,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PateintCard extends StatelessWidget {
  const PateintCard({
    super.key,
    required this.fieldName,
    required this.content,
  });
  final String fieldName;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        textDirection: TextDirection.rtl,
        text: TextSpan(
          text: '$fieldName : ',
          style: GoogleFonts.tajawal(
            color: Colors.deepPurpleAccent,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: content ?? "فارغ",
              style: content != null
                  ? GoogleFonts.tajawal(
                      color: Colors.black87,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.bold,
                    )
                  : emptyFieldStyle,
            )
          ],
        ),
      ),
    );
  }
}
