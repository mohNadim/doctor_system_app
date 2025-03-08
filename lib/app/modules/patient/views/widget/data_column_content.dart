import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataColumnContent extends StatelessWidget {
  const DataColumnContent({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
      style: GoogleFonts.tajawal(
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
        fontSize: 15,
      ),
    );
  }
}
