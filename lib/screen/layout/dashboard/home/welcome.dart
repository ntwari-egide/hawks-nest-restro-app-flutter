// welcome page

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/app_bar.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/meals_slides.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/search.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/menu/welcome.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardWelcomeScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuWelcomeScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardWelcomeScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardWelcomeScreen()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardWelcomeScreen()),
            );
          }
          // Handle tab selection
          setState(() {
            currentIndex = index;
          });
        },
      ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchWidget(),
            const SizedBox(height: 30.0),
            const Text(
              "#1 in Bethlehem, PA",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20.0),
            // create a slide show of food using the carousel slider
            const MealDiscountSlides(),
            const SizedBox(height: 20.0),
            const Text(
              "Categories",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20.0),
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

final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.menu_book),
      label: 'Menu',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.check_box),
      label: 'Orders',
    ),
    
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
     const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];