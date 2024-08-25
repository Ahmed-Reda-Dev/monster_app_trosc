import 'package:flutter/material.dart';
import 'package:moster_app/app/screens/login_screen.dart';

import '../widgets/my_sized_box.dart';

class SecondWelcomeScreen extends StatelessWidget {
  const SecondWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image_2.png',
              width: 600,
              height: 540,
              fit: BoxFit.cover,
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF8FE11),
                fixedSize: const Size(311, 48),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            mySizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(311, 48),
                side: const BorderSide(color: Color(0xFFF8FE11)),
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
