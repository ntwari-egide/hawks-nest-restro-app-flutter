import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/cart/welcome.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/welcome.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/menu/welcome.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  @override
  Widget build(BuildContext context) {
  int currentIndex = widget.currentIndex; 

    return BottomNavigationBar(
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
              MaterialPageRoute(builder: (context) => const MenuWelcomeScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartViewScreen()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuWelcomeScreen()),
            );
          }
          // Handle tab selection
          setState(() {
            currentIndex = index;
          });
        },
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
