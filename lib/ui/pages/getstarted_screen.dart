import 'package:airplane/static/nav_route.dart';
import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/plane.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(0, 255, 255, 255),
                  Color.fromARGB(214, 0, 0, 0)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(defMargin),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Fly Like a Bird",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: AppColors.white.color)),
                  const SizedBox.square(dimension: 10),
                  Text(
                    "Explore new world with us and let\nyourself get an amazing experiences",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(height: 1.75, color: AppColors.white.color),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  Button(
                      textBtn: "Get Started",
                      onPress: () {
                        Navigator.pushNamed(context, NavRoute.signUp.route);
                      }),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


