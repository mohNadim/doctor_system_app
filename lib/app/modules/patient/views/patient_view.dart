import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/button.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/data_column_content.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/search_widget.dart';
import 'package:doctor_sys_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/patient_controller.dart';

class PatientView extends GetView<PatientController> {
  const PatientView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: Column(
          spacing: 50,
          children: [
            const SizedBox(height: 30),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchWidget(controller: controller),
                MyButtun(
                  txt: "إضافة مريض",
                  onPressed: () => Get.toNamed(Routes.ADD_PATIENT),
                )
              ],
            ),
            controller.patients.isNotEmpty
                ? Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Scrollbar(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: DataTable(
                            columnSpacing: 40,
                            columns: [
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "الرقم الوطني\nللمرافق",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "رقم موبايل\nالمرافق",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "اسم المرافق",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "رقم الهاتف",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "العنوان",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "رقم موبايل\nالمريض",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "الرقم الوطني\nللمريض",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "العمر",
                                ),
                              ),
                              DataColumn(
                                label: DataColumnContent(
                                  txt: "الاسم",
                                ),
                              ),
                            ],
                            rows: List.generate(
                              controller.filteredPatients.length,
                              (index) {
                                Patient p = controller.filteredPatients[index];
                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        p.companionNationalId ?? '',
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      placeholder:
                                          p.companionNationalId == null,
                                    ),
                                    DataCell(
                                      Text(p.companionMobile ?? ''),
                                      placeholder: p.companionMobile == null,
                                    ),
                                    DataCell(
                                      Text(p.companionName ?? ''),
                                      placeholder: p.companionName == null,
                                    ),
                                    DataCell(
                                      Text(p.landlineNumber ?? ''),
                                      placeholder: p.landlineNumber == null,
                                    ),
                                    DataCell(
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          p.address ?? '',
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      placeholder: p.address == null,
                                    ),
                                    DataCell(
                                      Text(p.mobileNumber ?? ''),
                                      placeholder: p.mobileNumber == null,
                                    ),
                                    DataCell(Text(p.nationalId)),
                                    DataCell(Text(p.age.toString())),
                                    DataCell(Text(p.name)),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    // color: Colors.amber,
                    height: Get.height * 0.6,
                    child: Column(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/images/book.svg',
                          width: 300,
                        ),
                        Text(
                          "لا يوجد مرضى",
                          style: GoogleFonts.tajawal(fontSize: 30),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
