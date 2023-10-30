// welcome page

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/app_bar.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/welcome.dart';

class MenuWelcomeScreen extends StatefulWidget {
  const MenuWelcomeScreen({super.key});

  @override
  State<MenuWelcomeScreen> createState() => _MenuWelcomeScreenState();
}

class _MenuWelcomeScreenState extends State<MenuWelcomeScreen> {
  int currentIndex = 1; // Initially select the first tab

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
              MaterialPageRoute(
                  builder: (context) => const DashboardWelcomeScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MenuWelcomeScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuWelcomeScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuWelcomeScreen()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuWelcomeScreen()),
            );
          }
          // Handle tab selection
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/3887985/pexels-photo-3887985.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            // allow scrolling
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
          ),
          Container(
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // rounded
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.black,
                        size: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // rounded
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.share,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // rounded
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ),
          ],)
        ],
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