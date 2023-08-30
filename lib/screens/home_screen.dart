import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:google_fonts/google_fonts.dart";
import "package:online_course_app/components/components.dart";
import "package:online_course_app/widgets/widgets.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Course> allCourses = getAllCourses();
  final List<CourseWithRating> allCourseWithRating = getCourseWithRatings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(
            left: 20,
            top: 35,
            right: 10,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Online",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    height: 1, //height of line & gap between line
                  ),
                ),
                Text(
                  "Master Class",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            // SizedBox(//this will work also
            //   height: 349,
            //   child: ListView.builder(
            // child: SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(8, (index) {
            //       return Container(
            //         height: 49,
            //         width: 49,
            //         margin: const EdgeInsets.all(22),
            //         decoration: const BoxDecoration(color: Colors.amber),
            //         child: const Text("hello"),
            //       );
            //     }),
            //   ),
            // ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return HorizontalCourseList(
                    startColor: allCourses[index].startColor,
                    endColor: allCourses[index].endColor,
                    courseHeadline: allCourses[index].courseHeadline,
                    courseImage: allCourses[index].courseImage,
                    courseTitle: allCourses[index].courseTitle,
                    headlineColor: allCourses[index].headlineColor,
                  );
                },
              ),
            ),
            const SizedBox(height: 34),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start, //what it is doing
              children: [
                Text(
                  "Free online class",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "From over 80 Lectures",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 326,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // return Container(
                  //   height: 92,
                  //   width: 360,
                  //   margin: const EdgeInsets.all(5),
                  //   decoration: const BoxDecoration(
                  //     color: Color(0xFF3E3A6D),
                  //   ),
                  // );
                  return VerticalCourseList(
                    courseDuration: allCourseWithRating[index].courseDuration,
                    courseImage: allCourseWithRating[index].courseImage,
                    courseName: allCourseWithRating[index].courseName,
                    courseRating: allCourseWithRating[index].courseRating,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// to get all the course
List<Course> getAllCourses() {
  const String assetsLink = "assets/images/";

  List<int> startColor = [0xFF9288E4, 0xFFF4C465];
  List<int> endColor = [0xFF534EA7, 0xFFC63956];
  List<int> headlineColor = [0xFFAFA8EE, 0xFFF4C67A];
  List<String> courseImage = [
    "${assetsLink}img_saly10.png",
    "${assetsLink}img_saly361.png"
  ];
  List<String> courseTitle = [
    "UI/UX DESIGNER\nBEGINNER",
    "GRAPHICS DESIGNER\nMASTER"
  ];
  List<String> courseHeadline = ["Recomended", "NEW CLASS"];

  List<Course> allCourses = [];

  for (int i = 0; i < 6; i++) {
    if (i % 2 == 0) {
      //even courses
      allCourses.add(Course(startColor[0], endColor[0], courseHeadline[0],
          courseImage[0], courseTitle[0], headlineColor[0]));
    } else {
      //odd courses
      allCourses.add(Course(startColor[1], endColor[1], courseHeadline[1],
          courseImage[1], courseTitle[1], headlineColor[1]));
    }
  }

  return allCourses;
}

//to get the course with details

List<CourseWithRating> getCourseWithRatings() {
  const String imageAssets = "assets/images/";

  List<String> courseName = ["Flutter Developer", "Full Stack Javascript"];
  List<String> courseDuration = ["8 hours", "6 hours"];
  List<double> courseRating = [5, 3.5];
  List<String> courseImage = [
    "${imageAssets}img_saly24.png",
    "${imageAssets}img_saly131.png"
  ];

  List<CourseWithRating> courseWithRating = [];

  for (int i = 0; i < 6; i++) {
    if (i % 2 == 0) {
      //even courses
      courseWithRating.add(CourseWithRating(
          courseName[0], courseDuration[0], courseRating[0], courseImage[0]));
    } else {
      //odd courses
      courseWithRating.add(CourseWithRating(
          courseName[1], courseDuration[1], courseRating[1], courseImage[1]));
    }
  }

  return courseWithRating;
}
