import 'package:flutter/material.dart';
import 'package:tution_management/Common/RoundedButton.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFAF9FE),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: -100,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFE59E),
                ),
              ),
            ),
            Positioned(
              top: -150,
              left: -150,
              child: Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFF1E4),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/onboaed.png",
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Manage Your Tuition Properly",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae nisl nec elit dapibus consectetur.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF666666),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RoundedButton(
                    title: "Get Started",
                    onTap: () {},
                    width: double.infinity,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
