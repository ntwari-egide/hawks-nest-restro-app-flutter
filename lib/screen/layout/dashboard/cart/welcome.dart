import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/cart/cart_item.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/reusable/bottom_nav.dart';
import 'package:hawks_nest_app/screen/reusables/bottom_drawer.dart';

class CartViewScreen extends StatefulWidget {
  const CartViewScreen({super.key});

  @override
  State<CartViewScreen> createState() => _CartViewScreenState();
}

class _CartViewScreenState extends State<CartViewScreen> {
  final int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBarWidget(currentIndex: currentIndex),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(25, 3, 3, 3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: const Column(
                  children: [
                    CartItemWidget(),
                    Divider(height: 30,color: Color.fromARGB(30, 0, 0, 0),),
                    CartItemWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
