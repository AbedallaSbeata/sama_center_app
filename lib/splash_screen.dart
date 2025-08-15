import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sama/bottom_navegation_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  double rotationAngle = 0;
  Timer? splashTimer;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);

    animationController.addListener(() {
      if (!mounted) return;
      setState(() {
        rotationAngle = animationController.value;
      });
    });

    splashTimer = Timer(const Duration(seconds: 5), () {
      if (!mounted) return;
      animationController.stop();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavegationBar()),
      );
    });
  }

  @override
  void dispose() {
    splashTimer?.cancel();
    animationController.stop();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, rotationAngle * 30),
              child: CircleAvatar(
                radius: 90,
                backgroundImage: const AssetImage('images/samaculture.png'),
                backgroundColor: Colors.green[600],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'مركز سما للثقافة والفنون',
              style: TextStyle(
                fontFamily: 'Reem Kufi',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sama Center for Culture and Arts',
              style: TextStyle(
                fontFamily: 'Reem Kufi',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
