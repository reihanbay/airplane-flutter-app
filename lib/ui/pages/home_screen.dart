import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/card_populer_item.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget header(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defMargin, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Howdy,\nKezia Anne",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w600, height: 1.2),
                ),
                const SizedBox(height: 6),
                Text("Where to fly today?",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary))
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1529665730773-4f3fda31a5f9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(context),
        const SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardPopuler(
                imageUrl:
                    "https://images.unsplash.com/photo-1628488321763-eb2f79b7f3b5?q=80&w=1997&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                name: "Candi Prambanan",
                rating: "4.8",
                city: "Yogyakarta",
              ),
              CardPopuler(
                imageUrl:
                    "https://images.unsplash.com/photo-1628488321763-eb2f79b7f3b5?q=80&w=1997&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                name: "Candi Prambanan",
                rating: "4.8",
                city: "Yogyakarta",
              ),
              CardPopuler(
                imageUrl:
                    "https://images.unsplash.com/photo-1628488321763-eb2f79b7f3b5?q=80&w=1997&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                name: "Candi Prambanan",
                rating: "4.8",
                city: "Yogyakarta",
              ),
              CardPopuler(
                imageUrl:
                    "https://images.unsplash.com/photo-1628488321763-eb2f79b7f3b5?q=80&w=1997&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                name: "Candi Prambanan",
                rating: "4.8",
                city: "Yogyakarta",
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: defMargin, right: defMargin, top: 30, bottom: 16),
          child: Text("New This Year",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 140),
          child: const Column(
            children: [
              DestinationTile(name: "Danau Beratan", place: "Singaraja", rating: 4.8,imageUrl: "https://images.unsplash.com/photo-1625328256399-62e448055742?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              DestinationTile(name: "Danau Beratan", place: "Singaraja", rating: 4.8,imageUrl: "https://images.unsplash.com/photo-1625328256399-62e448055742?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              DestinationTile(name: "Danau Beratan", place: "Singaraja", rating: 4.8,imageUrl: "https://images.unsplash.com/photo-1625328256399-62e448055742?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              DestinationTile(name: "Danau Beratan", place: "Singaraja", rating: 4.8,imageUrl: "https://images.unsplash.com/photo-1625328256399-62e448055742?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              DestinationTile(name: "Danau Beratan", place: "Singaraja", rating: 4.8,imageUrl: "https://images.unsplash.com/photo-1625328256399-62e448055742?q=80&w=2127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
            ],
          ),
        )
      ],
    );
  }
}
