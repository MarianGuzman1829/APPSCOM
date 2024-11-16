import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appscom/src/navigation/new_routes.dart';
import 'package:appscom/src/res/colors.dart';

void main() async { //en esta parte se agrega el async
  runApp( //se agrega el async
    DevicePreview( 
      enabled: kReleaseMode, 
      tools: const [
        DeviceSection(),
        SettingsSection(),
      ],
      builder: (context) => const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "APPSCOM",
        themeMode: ThemeMode.light,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.lightScaffoldBg,
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
//5 11 (calendario escolar) 12 (botones)  13 (imagenes) 26 (login dise;o) 30 (info) 39(info) 41 (perfil login boleta curp) 90 
