// welcome page

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/app_bar.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/meals_slides.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/search.dart';

class DashboardWelcomeScreen extends StatefulWidget {
  const DashboardWelcomeScreen({super.key});

  @override
  State<DashboardWelcomeScreen> createState() => _DashboardWelcomeScreenState();
}

class _DashboardWelcomeScreenState extends State<DashboardWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchWidget(),
            SizedBox(height: 30.0),
            Text(
              "#1 in Bethlehem, PA",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 20.0),
            // create a slide show of food using the carousel slider
            MealDiscountSlides()
          ],
        ),
      ),
    );
  }
}