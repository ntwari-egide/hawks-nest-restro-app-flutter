// welcome page

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/app_bar.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/meals_slides.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/search.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/reusable/bottom_nav.dart';

class DashboardWelcomeScreen extends StatefulWidget {
  const DashboardWelcomeScreen({super.key});

  @override
  State<DashboardWelcomeScreen> createState() => _DashboardWelcomeScreenState();
}

class _DashboardWelcomeScreenState extends State<DashboardWelcomeScreen> {
  final List<String> categories = [
    "Category 1",
    "Category 2",
    "Category 3",
    "Category 4"
  ];

  int currentIndex = 0; // Initially select the first tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: currentIndex),
      appBar: AppBar(
        title: const Text('Hawks Nest'),
        actions: [],
        bottom:
            // add the locatoin text on the left and below add the search icon
            const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBarWidget(),
        ),
      ),
      body: Container(
        width: double.infinity,
        // allow scrolling
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchWidget(),
            SizedBox(height: 30.0),
            Text(
              "#1 in Bethlehem, PA",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.0),
            // create a slide show of food using the carousel slider
            MealDiscountSlides(),
            SizedBox(height: 20.0),
            Text(
              "Categories",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.0),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: categories.map((category) => CategoryView()).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}