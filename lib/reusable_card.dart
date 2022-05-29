import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReusableCard extends StatelessWidget {
  final BoxDecoration cardDecoration, buttonDecoration;
  final String typeText, descriptionText, buttonText, imagePath;
  final Color descriptionTextColor, buttonTextColor;
  final int index;
  final double containerHeight, containerWidth;

  ReusableCard({
    this.cardDecoration,
    this.buttonDecoration,
    this.typeText,
    this.descriptionText,
    this.buttonText,
    this.descriptionTextColor,
    this.buttonTextColor,
    this.imagePath,
    this.index,
    this.containerHeight,
    this.containerWidth,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: containerHeight,
      width: containerWidth,
      decoration: cardDecoration,
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 45.0,
                right: 122.0,
              ),
              child: Container(
                child: SvgPicture.asset(
                  imagePath,
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 120.0,
              ),
              child: Text(
                typeText,
                style: GoogleFonts.bigShouldersDisplay(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 45.0,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 45.0,
              ),
              child: Text(
                descriptionText,
                style: GoogleFonts.lexendDeca(
                  fontSize: 16.0,
                  color: descriptionTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 110.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 110.0,
              ),
              child: Container(
                height: 45,
                width: 125,
                decoration: buttonDecoration,
                child: Center(
                  child: Text(
                    buttonText,
                    style: GoogleFonts.lexendDeca(
                      color: buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}