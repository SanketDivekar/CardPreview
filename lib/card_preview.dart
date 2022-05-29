//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_preview/mobile_cardpreview.dart';
import 'package:card_preview/web_cardpreview.dart';

class CardPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE28525),
        title: Text(
          "CardPreview",
          style: GoogleFonts.abel(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1100) {
            return WebCardpreview();
          } else if (constraints.maxWidth >= 650 &&
              constraints.maxWidth < 1100) {
            return MobileCardpreview();
          } else {
            return MobileCardpreview();
          }
        },
      ),
    );
  }
}
