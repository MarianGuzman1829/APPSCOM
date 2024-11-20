import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appscom/src/res/text_custom.dart';

class Onboarding1Screen extends StatelessWidget {
  static const String routename = 'Onboarding1';
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/svg/undraw1.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'A shark appears',
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
                width: 20.w,
                child: svg,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textNegro('Queremos hacerte sentir '),
                    textAzul('Bienvenido '),
                    textNegro(' a nuestra gran '),
                    textAzul('Comunidad'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
