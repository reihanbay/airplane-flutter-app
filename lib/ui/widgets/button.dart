import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textBtn;
  final Function() onPress;
  const Button({super.key, required this.textBtn, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextButton(
          onPressed: onPress,
          style: TextButton.styleFrom(
              backgroundColor: AppColors.purple.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defRadius))),
          child: Text(textBtn,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }
}