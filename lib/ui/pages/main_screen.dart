import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/custom_bottomnav_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: defMargin, left: defMargin, right: defMargin),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defRadius),
            color: Theme.of(context).colorScheme.onSecondary
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavItem(imageUrl: 'assets/ic_globe.svg', isSelected: true,),
              CustomBottomNavItem(imageUrl: 'assets/ic_book.svg'),
              CustomBottomNavItem(imageUrl: 'assets/ic_credit.svg'),
              CustomBottomNavItem(imageUrl: 'assets/ic_settings.svg'),
            ],
          ),
        ));
    }
    return Scaffold(
      body: Stack(
        children: [
          const Text("Main Screen"),
          customBottomNav()
        ],
      ),
    );
  }
}

