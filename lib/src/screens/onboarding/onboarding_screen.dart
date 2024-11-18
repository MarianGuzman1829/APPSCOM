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
    );
    super.initState();
  }

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
                  const Spacer(flex: 3),
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
                        SizedBox(height: 16),
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
                 // const Spacer(flex: 1),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "App creada por @Atl1God",
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "",
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