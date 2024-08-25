import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moster_app/app/widgets/my_container.dart';

import '../widgets/my_sized_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: const Color(0xFF1F2022),
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    width: 24,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  children: [
                    Text(
                      'LET’S SIGN YOU IN',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'Teko',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Welcome back. You’ve been missed!',
                      style: TextStyle(
                        color: Color(0xFF808696),
                        fontSize: 14,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                cursorColor: const Color(0xFFF8FE11),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFF808696),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF8FE11),
                    ),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              TextFormField(
                cursorColor: const Color(0xFFF8FE11),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFF808696),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF8FE11),
                    ),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
              ),
              mySizedBox(height: 24),
              const Center(
                child: Text(
                  'Or login with',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF808797),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/google.svg',
                        width: 24,
                      ),
                    ),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/twitter.svg',
                        width: 24,
                      ),
                    ),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
