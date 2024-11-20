import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:appscom/src/res/text_custom.dart';

/*
class Onboarding1Screen extends StatelessWidget {
  static const String routename = 'Onboarding1';
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/svg/onboarding/undraw1.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Escom',
    );

    return Scaffold(
      body: SafeArea(
        child:Center(
          child: SizedBox(
            height: 80.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                    width: 70.w,
                    child: svg,
                  ),
                  Padding(
                  padding: const  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      textNegro('Queremos hacerte sentir '),
                      textAzul('Bienvenido '),
                      textNegro(' a nuestra gran '),
                      textAzul('Comunidad'),
                     ],
                ),
                  ),
              ],
            )
          ),
        ),
      ),
    );
  }
}*/

class Onboarding1Screen extends StatelessWidget {
  static const String routename = 'Onboarding1';
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/svg/onboarding/undraw1.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Comunidad',
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 100.w, // Contenedor principal ajustado a un ancho responsivo
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SVG centrado y ajustado
                SizedBox(
                  height: 40.h, // Altura proporcional al 40% de la pantalla
                  width: 60.w,  // Ancho proporcional al 60% de la pantalla
                  child: svg,
                ),
                SizedBox(height: 2.h), // Separación entre SVG y texto

                // T
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Queremos hacerte sentir\n', 
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'parte', // 
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: ' de nuestra gran', // 
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' comunidad', // 
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, // Centrar el texto
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
