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
    return Column(
      children: [

        ListView.builder( itemCount: 3 ,itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                ExpansionTile(title: const Text("Recommended"), controller: _controller, children: [],)
              ],
            ),
          );
        }),
      ],
    );
  }
}