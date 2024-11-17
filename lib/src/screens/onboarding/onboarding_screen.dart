import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

import 'components/animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late rive.RiveAnimationController _btnAnimationColtroller;

  @override
  void initState() {
    _btnAnimationColtroller = rive.OneShotAnimation(
      "active",
      autoplay: false,
      // Let's restart the app again
      // No amination
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // At the end of the video i will show you
          // How to create that animation on Rive
          // Let's add blur
          Positioned(
            // height: 100,
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 50,
            left: 10,
            child: Image.asset("assets/png/shark.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              // Now it's looks perfect
              // See how easy
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            ),
          ),
          const rive.RiveAnimation.asset("assets/rive/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              // Now it's looks perfect
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: const SizedBox(),
            ),
          ),
          // Let's add text
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  SizedBox(
                    width: 250,
                    child: Column(
                      children: const [
                        Text(
                          "BIENVENIDO",
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 60, 107),
                            fontSize: 40,
                            fontFamily: "Poppins",
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Bienvenido a la mejor escuela de computo de México, donde podrás aprender de los mejores profesionales en el área de la computación.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                        ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  AnimatedBtn(
                    btnAnimationColtroller: _btnAnimationColtroller,
                    press: () {
                      _btnAnimationColtroller.isActive = true;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "App creada por @Atl1God",
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