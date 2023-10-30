import 'package:flutter/material.dart';

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
        title: const Text("Recommended (3)", style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),),
        controller: _controller,
        children: [
          const ListTile(
            title: Text("Recommended 1"),
          ),
          const ListTile(
            title: Text("Recommended 2"),
          ),
          const ListTile(
            title: Text("Recommended 3"),
          ),
        ],
      ),
    ]);
  }
}
