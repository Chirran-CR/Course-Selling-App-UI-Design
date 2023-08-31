import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class VerticalCourseDetailList extends StatelessWidget {
  final String courseName, courseDuration, courseAvailability, courseImage;
  final int courseColor;

  const VerticalCourseDetailList(
      {super.key,
      required this.courseName,
      required this.courseDuration,
      required this.courseAvailability,
      required this.courseImage,
      required this.courseColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
      child: Container(
        height: 82,
        width: 374,
        decoration: BoxDecoration(
          color: const Color(0xFF3E3A6D),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 82,
              decoration: BoxDecoration(
                color: Color(courseColor),
                borderRadius: BorderRadius.circular(19),
                image: DecorationImage(
                  image: AssetImage(courseImage),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        courseName,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            courseDuration,
                            style: GoogleFonts.roboto(
                              color: const Color(0xFF8C8C8C),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 39,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFEB53A2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Text(
                                courseAvailability,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
