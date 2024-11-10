import 'package:airplane/static/nav_route.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessCoScreen extends StatelessWidget {
  const SuccessCoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defPadding, vertical: defPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(
                minWidth: 300,
                maxWidth: double.infinity
              ),
              child: SvgPicture.asset('assets/scheduling.svg'),
            ),
            const SizedBox(height: 80),
            Text('Well Booked 😍', style: Theme.of(context).textTheme.displaySmall),
            const SizedBox(height: 10),
            Text('Are you ready to explore the new world of experiences?', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
            const SizedBox(height: 50),
            Button(textBtn: 'My Bookings', onPress: () {
              Navigator.pushReplacementNamed(context, NavRoute.main.route);
            })
          ],
        ),
      ),
    );
  }
}