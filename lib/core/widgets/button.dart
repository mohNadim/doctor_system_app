import 'package:doctor_sys_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtun extends StatelessWidget {
  const MyButtun({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  final String txt;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent),
      ),
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          txt,
          style: GoogleFonts.tajawal(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
