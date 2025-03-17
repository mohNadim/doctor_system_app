import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitCard extends StatelessWidget {
  VisitCard({
    super.key,
    required this.cardTitle,
    required this.child,
    this.height,
    this.width,
  });

  double? width;
  double? height;
  final String cardTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 13),
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              width: 2,
              color: Colors.black38,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        ),
        Positioned(
          right: 25,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            color: Color(0xFFFEF7FF),
            child: Text(
              cardTitle,
              style: GoogleFonts.tajawal(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
