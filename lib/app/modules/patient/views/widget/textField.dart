import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Field extends StatelessWidget {
  Field({
    super.key,
    this.controller,
    // required this.border,
    required this.hintText,
    required this.label,
    this.validator,
    this.maxLine,
    this.enabled = true,
    this.required = false,
  });

  TextEditingController? controller;
  String? Function(String?)? validator;
  final String hintText;
  final String label;
  int? maxLine;
  bool enabled;
  bool required;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                required
                    ? Text(
                        "*  ",
                        style: GoogleFonts.tajawal(
                          color: Colors.red,
                        ),
                      )
                    : Text(''),
                Text(
                  label,
                  style:
                      GoogleFonts.tajawal(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            child: TextFormField(
              enabled: enabled,
              controller: controller,
              validator: validator,
              textAlign: TextAlign.right,
              maxLines: maxLine,
              decoration: InputDecoration(
                hintText: hintText,
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
