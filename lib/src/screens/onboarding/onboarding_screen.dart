import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:appscom/src/screens/onboarding/screens_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
   static const name = "OnboardingScreen";
   const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            //height: 100,
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 50,
            left: 10,
            child: Image.asset("assets/png/shark.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: const SizedBox(),
            ),
          ),

          // En esta parte se agrega el texto de bienvenida
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 215), 
                  const SizedBox(width: 50), 
                  SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        FadeIn(
                          delay:const Duration(seconds: 2),
                          duration :const Duration(seconds: 6),
                        child: const Text(
                          "BIENVENIDO",
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 60, 107),
                            fontSize: 40,
                            fontFamily: "Poppins",
                            height: 1.2,
                              ),
                            ),
                        ),
                        const SizedBox(height: 16),
                        FadeIn(
                            delay: const Duration(seconds: 3),       
                            duration: const Duration(seconds: 6), 
                        child:const Text(
                          "Bienvenido a la mejor escuela de computo de México, donde podrás aprender de los mejores profesionales en el área de la computación.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),  
                  Align(
                    alignment: FractionalOffset(0.2, 0),
                  child:FadeIn(
                     delay:const Duration(seconds: 5),
                     duration :const Duration(seconds: 6),
                     child: GestureDetector(
                      onTap:(){
                        Navigator.pushNamed(context, ContenedorOnboardingScreen.routename);
                      },
                    child: AvatarGlow(
                      glowRadiusFactor: .5,
                      glowColor: Colors.blue,
                      startDelay: const Duration(seconds: 3),
                      animate: true,
                      glowCount: 2,
                      duration: const Duration(seconds: 3),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 40,
                        child: Image.asset("assets/png/logoshark.png",
                        height: 200),
                      ),
                    ),
                  ),
                 ),
                ),
                 SizedBox(height: 55),
                 FadeIn(
                     delay:const Duration(seconds: 6),
                     duration :const Duration(seconds: 6),
                     child: Text(
                      "Presiona para continuar",
                      style: TextStyle(
                        color: Color.fromARGB(150, 4, 94, 168),
                        fontSize: 20,
                      ),
                     ),
                  ),
                  SizedBox(height: 75), 
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "App creada por @Atl1God, @Marielly",
                  ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}