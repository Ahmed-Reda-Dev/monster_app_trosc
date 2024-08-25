import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/my_sized_box.dart';
import 'second_welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/pattern_1.svg',
                    width: 422,
                    height: 472,
                  ),
                  Positioned(
                    top: 174,
                    left: 122,
                    child: SvgPicture.asset(
                      'assets/icons/icon.svg',
                      width: 124,
                      height: 124,
                    ),
                  ),
                ],
              ),
              const Text(
                'MONSTER LIVESCORE',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontFamily: 'Teko',
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),
              const SizedBox(
                width: 311,
                child: Text(
                  'Never miss a goal - get live match alerts, fixtures and results for your favourite teams and competitions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808696),
                    fontSize: 14,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SecondWelcomeScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF8FE11),
                  fixedSize: const Size(311, 48),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
