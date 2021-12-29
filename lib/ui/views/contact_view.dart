import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContacView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contac view',
            style: GoogleFonts.montserratAlternates(
                fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
