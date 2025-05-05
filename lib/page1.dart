import 'package:flutter/material.dart';
import 'package:salmakhaled_day2/models/customButtom.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24),
                    Image.asset(
                      'assets/images/Group 176.png',
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Enterprise Team',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Management',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'With an extensive menu prepared by talented chefs, fresh quality food.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    CustomButtoms(
                      text: 'Sign Up',
                      color: Colors.red,
                      textcolor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    CustomButtoms(
                      text: 'Continue With Google',
                      color: Colors.white,
                      textcolor: Colors.black,
                      imagePath: 'assets/images/Group 176.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
