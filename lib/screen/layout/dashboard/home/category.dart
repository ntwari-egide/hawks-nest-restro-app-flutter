import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 50,
  width: double.infinity,
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
    image: DecorationImage(
      image: NetworkImage(
        'https://images.pexels.com/photos/1146760/pexels-photo-1146760.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      ),
      fit: BoxFit.cover,
    ),
  ),
  child: Stack(
    
    children: [
      Container(
        height: 50,
        // set w-full
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          color: Colors.black.withOpacity(0.4), // Adjust opacity as needed
        ),
      ),
      const Center(
        child: Text(
          "Pizza 1",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
);
  }
}
