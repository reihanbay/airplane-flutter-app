import 'package:airplane/styles/colors/colors.dart';
import 'package:airplane/styles/theme/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String place;
  final String imageUrl;
  final double rating;

  const DestinationTile(
      {super.key,
      required this.name,
      required this.place,
      required this.imageUrl,
      this.rating = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 16, left: defMargin, right: defMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defRadius),
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defRadius),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))),
          ),
          const SizedBox(width: 16),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Danau Beratan",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                "Singaraja",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
              ),
            ],
          )),
          Icon(Icons.star, color: AppColors.orange.color, size: 24),
                    Text(rating.toString(), style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600
                    )),
          const SizedBox(width: 6)
        ],
      ),
    );
  }
}
