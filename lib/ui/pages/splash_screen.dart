
import 'package:airplane/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // Timer(const Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, NavRoute.getStart.route));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 100,
              child: SvgPicture.asset('assets/ic_airplane.svg', colorFilter: ColorFilter.mode(AppColors.white.color, BlendMode.dstIn))),
            const SizedBox.square(dimension: 50),
            Text("AIRPLANE", style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, letterSpacing: 10))
          ],
        ),
      ),
    );
  }
}