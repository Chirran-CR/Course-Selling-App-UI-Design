import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/components/components.dart';
import 'package:online_course_app/widgets/widgets.dart';

class CourseDetailScreen extends StatelessWidget {
  CourseDetailScreen({super.key});

  final List<CourseDetail> courseDetail = getCourseDetail();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              height: 362,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1, 0),
                    colors: <Color>[
                      Color(0xFFF4C465),
                      Color(0xFFC63956),
                    ]),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage("assets/images/img_saly36_detail.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 22, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(height: 11),
                  Text(
                    "Graphic Design Master",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 122.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img_user1.png"),
                                      ),
                                    ),
                                    // child: Image.asset(
                                    //     "assets/images/img_user1.png"),
                                  ),
                                ),
                                Positioned(
                                  left: 24,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img_user2.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 48,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img_user3.png"),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 72,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img_user4.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            "+28K Members",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 47,
                        width: 54,
                        decoration: BoxDecoration(
                          color: const Color(0xFF353567),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12,
                          ),
                          child:
                              SvgPicture.asset("assets/images/icon_like.svg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return VerticalCourseDetailList(
                      courseName: courseDetail[index].courseName,
                      courseDuration: courseDetail[index].courseDuration,
                      courseAvailability:
                          courseDetail[index].courseAvailability,
                      courseImage: courseDetail[index].courseImage,
                      courseColor: courseDetail[index].courseColor);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<CourseDetail> getCourseDetail() {
  const String imageAssets = "assets/images/";

  List<String> courseName = [
    "Introduction Design Graphic",
    "Fundamental of Design",
    "Layout Design"
  ];
  List<String> courseDuration = ["12 Minutes", "16 Minutes", "10 Minutes"];
  List<String> courseAvailability = ["Free", "Paid", "Free"];
  List<String> courseImage = [
    "${imageAssets}img_saly20.png",
    "${imageAssets}img_saly21.png",
    "${imageAssets}img_saly25.png",
  ];
  List<int> courseColor = [0xFFDA70D6, 0xFFFFEA00, 0xFF0096FF];

  List<CourseDetail> courseWithDetail = [];

  for (int i = 0; i < 10; i++) {
    if (i % 3 == 0) {
      courseWithDetail.add(CourseDetail(courseName[0], courseDuration[0],
          courseAvailability[0], courseImage[0], courseColor[0]));
    } else if (i % 3 == 1) {
      courseWithDetail.add(CourseDetail(courseName[1], courseDuration[1],
          courseAvailability[1], courseImage[1], courseColor[1]));
    } else {
      courseWithDetail.add(CourseDetail(courseName[2], courseDuration[2],
          courseAvailability[2], courseImage[2], courseColor[2]));
    }
  }

  return courseWithDetail;
}
