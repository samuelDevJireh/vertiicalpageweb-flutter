import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Pricing view',
            style: GoogleFonts.montserratAlternates(
                fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
