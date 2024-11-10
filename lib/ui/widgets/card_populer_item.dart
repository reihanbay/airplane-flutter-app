import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:flutter/material.dart';

class CardPopuler extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final String rating;

  const CardPopuler({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.city,
    required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(left: defMargin),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.09),
              spreadRadius: 1,
              blurRadius: 15)
        ],
        color: Theme.of(context).colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(defRadius),
      ),
      constraints: BoxConstraints(
        maxHeight: double.infinity
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defRadius),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(defRadius))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: AppColors.orange.color, size: 24),
                    Text(rating, style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600
                    ))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox.square(dimension: 20),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          const SizedBox.square(dimension: 5),
          Text(
            city,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ],
      ),
    );
  }
}
