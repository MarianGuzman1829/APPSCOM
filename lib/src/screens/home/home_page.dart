/*import 'package:flutter/material.dart';

import 'package:appscom/src/res/components/course.dart';
import 'components/course_card.dart';
import 'components/secondary_course_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Courses",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: courses
                      .map(
                        (course) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CourseCard(
                            title: course.title,
                            iconSrc: course.iconSrc,
                            color: course.color,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Recent",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              ...recentCourses.map((course) => Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: SecondaryCourseCard(
                      title: course.title,
                      iconsSrc: course.iconSrc,
                      colorl: course.color,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appscom/src/res/colors.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int columns = 2;
    if (width >= 1200) {
      columns = 7;
    }
    if (width >= 2400) {
      columns = 10;
    }

    return Scaffold(
      backgroundColor: AppColors.darkScaffoldBg,
      appBar: AppBar(
        title: const Text(
          "Flutter Ui Kit",
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: AppColors.darkScaffoldBg,
        surfaceTintColor: AppColors.darkScaffoldBg,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: columns,
        children: List.generate(
          10,
          (index) {
            return GridTile(
              child: GestureDetector(
                onTap: () {
                  context.push("/pg${index + 1}");
                },
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: const Color(0xff525252),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
