import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/menu/meal_display.dart';

class RecommendedMealWidget extends StatefulWidget {
  const RecommendedMealWidget({super.key});

  @override
  State<RecommendedMealWidget> createState() => _RecommendedMealWidgetState();
}

class _RecommendedMealWidgetState extends State<RecommendedMealWidget> {
  final ExpansionTileController _controller = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExpansionTile(
        initiallyExpanded: true,
        tilePadding: EdgeInsets.zero,
        collapsedIconColor: Colors.orange,
        title: const Text(
          "Recommended (3)",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        controller: _controller,
        // controlAffinity: ListTileControlAffinity.trailing,
        children: [
          SizedBox(
            height: 420,
            child: ListView.builder(
              // add gap-4 between each item
              padding: const EdgeInsets.all(4),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const MealDisplay();
              },
            ),
          )
        ],
      ),
    ]);
  }
}
