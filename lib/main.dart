import "package:flutter/material.dart";
import "package:online_course_app/screens/screens.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF29274F),
      ),
      home: HomeScreen(),
    );
  }
}
