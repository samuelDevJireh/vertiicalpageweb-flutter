import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'About view',
            style: GoogleFonts.montserratAlternates(
                fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
