import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moster_app/app/screens/signup_screen.dart';

import '../widgets/my_button.dart';
import '../widgets/my_sized_box.dart';
import 'login_screen.dart';

class ThirdWelcomeScreen extends StatelessWidget {
  const ThirdWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/pattern-2.svg',
                  width: 422,
                  height: 472,
                ),
                Positioned(
                  top: 80,
                  left: 10,
                  child: Image.asset(
                    'assets/images/illustration-2.png',
                    width: 375,
                    height: 416,
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
                'We’d like to check that your preferences and details are accurate.',
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
            myButton(
                context: context,
                text: 'Login',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                }),
            mySizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignupScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(311, 48),
                side: const BorderSide(color: Color(0xFFF8FE11)),
                backgroundColor: Colors.transparent,
              ),
              child: const Text(
                'Sign for Monster Livescore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
