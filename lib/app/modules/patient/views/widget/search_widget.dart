import 'package:doctor_sys_app/app/modules/patient/controllers/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller,
  });

  final PatientController controller;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 20),
      ),
      elevation: WidgetStatePropertyAll<double?>(0),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      leading: Icon(Icons.search),
      hintText: "بحث",
      hintStyle: WidgetStateProperty.all(
        GoogleFonts.tajawal(
          color: Colors.black38,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: (value) => controller.searchQuery.value = value,
    );
  }
}
