// Category screen class

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/data/categories.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Food Categories'),
      ),
      body: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing:20 , childAspectRatio: 3 / 2),
          children: foodCategories
              .map((food) => (Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [food.color.withOpacity(0.7), food.color],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(food.title),
                  )))
              .toList()),
    );
  }
}
