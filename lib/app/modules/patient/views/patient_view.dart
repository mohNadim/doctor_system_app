import 'package:doctor_sys_app/app/data/models/patients_model/patient_model.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/button.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/data_column_content.dart';
import 'package:doctor_sys_app/app/modules/patient/views/widget/search_widget.dart';
import 'package:doctor_sys_app/app/routes/app_pages.dart';
import 'package:doctor_sys_app/core/constant/constant_var.dart';
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
            ),
            controller.patients.isNotEmpty
                ? Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Scrollbar(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: DataTable(
                            showCheckboxColumn: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            border: TableBorder.all(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26,
                            ),
                            columnSpacing: 40,
                            columns: [
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "الرقم الوطني\nللمرافق",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "رقم موبايل\nالمرافق",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "اسم المرافق",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "رقم الهاتف",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "العنوان",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "رقم موبايل\nالمريض",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "الرقم الوطني\nللمريض",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
                                label: DataColumnContent(
                                  txt: "العمر",
                                ),
                              ),
                              DataColumn(
                                headingRowAlignment: MainAxisAlignment.center,
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
                                        p.companionNationalId ?? emptyValue,
                                        style: p.companionNationalId == null
                                            ? emptyFieldStyle
                                            : null,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                      ),
                                      placeholder:
                                          p.companionNationalId == null,
                                    ),
                                    DataCell(
                                      Text(
                                        p.companionMobile ?? emptyValue,
                                        style: p.companionMobile == null
                                            ? emptyFieldStyle
                                            : null,
                                        textAlign: TextAlign.right,
                                      ),
                                      placeholder: p.companionMobile == null,
                                    ),
                                    DataCell(
                                      Text(
                                        p.companionName ?? emptyValue,
                                        style: p.companionMobile == null
                                            ? emptyFieldStyle
                                            : null,
                                        textAlign: TextAlign.right,
                                      ),
                                      placeholder: p.companionName == null,
                                    ),
                                    DataCell(
                                      Text(
                                        p.landlineNumber ?? emptyValue,
                                        style: p.landlineNumber == null
                                            ? emptyFieldStyle
                                            : null,
                                        textAlign: TextAlign.right,
                                      ),
                                      placeholder: p.landlineNumber == null,
                                    ),
                                    DataCell(
                                      SizedBox(
                                        width: 100,
                                        child: Text(
                                          p.address ?? emptyValue,
                                          style: p.address == null
                                              ? emptyFieldStyle
                                              : null,
                                          overflow: TextOverflow.fade,
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      placeholder: p.address == null,
                                    ),
                                    DataCell(
                                      Text(
                                        p.mobileNumber ?? emptyValue,
                                        style: p.mobileNumber == null
                                            ? emptyFieldStyle
                                            : null,
                                        textAlign: TextAlign.right,
                                      ),
                                      placeholder: p.mobileNumber == null,
                                    ),
                                    DataCell(
                                      Text(
                                        p.nationalId,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        p.age.toString(),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        p.name,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(
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
