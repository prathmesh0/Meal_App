import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.meal.title),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite; // Toggle the favorite status
                });
                widget.onToggleFavorite(widget.meal);
              },
              icon: const Icon(Icons.star),
            ),
          ],
        ),
        body: SlideInDown(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ZoomIn(
                  delay: const Duration(milliseconds: 300),
                  child: Image.network(
                    widget.meal.imageUrl,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'Ingredient',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 14,
                ),
                for (final ingredient in widget.meal.ingredients)
                  Text(
                    ingredient,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Steps',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 14,
                ),
                for (final step in widget.meal.steps)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Text(
                      step,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
