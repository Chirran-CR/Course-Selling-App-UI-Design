import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VerticalCourseList extends StatelessWidget {
  final String courseName, courseDuration, courseImage;
  final double courseRating;
  const VerticalCourseList(
      {super.key,
      required this.courseName,
      required this.courseDuration,
      required this.courseRating,
      required this.courseImage});
  @override
  Widget build(BuildContext context) {
    // print(courseImage);
    // print(courseDuration);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 124,
        width: 375,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.13),
              decoration: BoxDecoration(
                color: const Color(0xFF3E3A6D),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 13,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
            ),
            // Positioned(// works fine also
            //   left: 26,
            //   bottom: 19,
            //   child: Image.asset(
            //     "assets/images/img_saly24.png",
            //     scale: 2,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 26, bottom: 19),
              child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(courseImage),
                      ),
                    ),
                  ),
                  Padding(
                    // padding: EdgeInsets.only(left: 10, top: 42),//also works without mainAxisAllignment.end
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseName,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          courseDuration,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: courseRating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xFFF4C465),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 34,
              right: 8,
              child: Container(
                // height: MediaQuery.of(context).size.width * 0.06,
                // width: MediaQuery.of(context).size.width * 0.06,
                height: 29,
                width: 29,
                decoration: const BoxDecoration(
                  color: Color(0xFFEB53A2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
