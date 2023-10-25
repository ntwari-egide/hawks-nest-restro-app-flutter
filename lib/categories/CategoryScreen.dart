// Category screen class

import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Food Categories'),
      ),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20, childAspectRatio: 3/2),
      children: const [
        Text("Category 1"),
        Text("Category 2"),
        Text("Category 3"),
        Text("Category 4"),
        Text("Category 5"),
      ],
      )
    );
  }
}