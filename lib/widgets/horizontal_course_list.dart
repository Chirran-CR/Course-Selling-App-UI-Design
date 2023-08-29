import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HorizontalCourseList extends StatelessWidget {
  final int startColor, endColor, headlineColor;
  final String courseTitle, courseHeadline, courseImage;
  const HorizontalCourseList(
      {super.key,
      required this.startColor,
      required this.endColor,
      required this.courseTitle,
      required this.courseHeadline,
      required this.courseImage,
      required this.headlineColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        height: 349,
        width: 256,
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(22)), //more customization
          // borderRadius: BorderRadius.circular(22), //more concise
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                height: 39,
                // width: 115,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(headlineColor),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Text(
                  courseHeadline,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 14,
              child: Text(
                courseTitle, //to moves to next line
                overflow: TextOverflow.visible,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
