import 'package:flutter/material.dart' show Color;

class Course {
  final String title, description, iconSrc;
  final Color bgColor;

  Course({
    required this.title,
    this.description = '',
    this.iconSrc = "assets/icons/ios.svg",
    this.bgColor = const Color(0xFF7553F6),
  });
}

final List<Course> courses = [
  Course(
    title: "Diseño de la UI",
  ),
  Course(
    title: "Animacion en Flutter",
    iconSrc: "assets/icons/code.svg",
    bgColor: const Color(0xFF80A4FF),
  ),
];

final List<Course> recentCourses = [
  Course(title: "Estado de la App"),
  Course(
    title: "Menu Animado",
    bgColor: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(title: "Flutter con rive"),
  Course(
    title: "Menu Animado",
    bgColor: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
];
