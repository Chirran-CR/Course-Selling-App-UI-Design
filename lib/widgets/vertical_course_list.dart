import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class VerticalCourseList extends StatelessWidget {
  const VerticalCourseList({super.key});

  @override
  Widget build(BuildContext context) {
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/img_saly24.png"),
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
                          "Flutter Developer",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "8 hours",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
