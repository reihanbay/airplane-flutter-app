
import 'package:airplane/static/nav_route.dart';
import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BonusScreen extends StatelessWidget {
  const BonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defPadding, vertical: defPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CardBonus(name: "Kezia Anne", balance: "280.000.000"),
            const SizedBox(height: 80),
            Text('Big Bonus 🎉', style: Theme.of(context).textTheme.displaySmall),
            const SizedBox(height: 10),
            Text('We give you early credit so that\nyou can buy a flight ticket', style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
            const SizedBox(height: 50),
            Button(textBtn: 'Start Fly Now', onPress: () {
              Navigator.pushReplacementNamed(context, NavRoute.main.route);
            })
          ],
        ),
      ),
    );
  }
}

class CardBonus extends StatelessWidget {
  final String name ; 
  final String balance;
  const CardBonus({
    super.key,
    required this.name,
    required this.balance
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.all(defPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.purple.color.withOpacity(0.4),
            offset: const Offset(0, 10),
            spreadRadius: 5,
            blurRadius: 30
          )
        ],
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromARGB(255, 130, 99, 252),
            AppColors.purple.color,
            const Color.fromARGB(255, 130, 99, 252),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name',
                    overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white)),
                    Text(name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox.square(
                      dimension: 24,
                      child: SvgPicture.asset('assets/ic_airplane.svg', colorFilter: ColorFilter.mode(AppColors.white.color, BlendMode.dstIn))),
                  const SizedBox(width: 6),
                  Text('Pay',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Balance',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white)),
              Text('Rp. $balance',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(height: 1.5, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
