import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/cart/cart_item.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/reusable/bottom_nav.dart';

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
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          margin: const EdgeInsets.only(top: 20.0),
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
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: const Column(
                  children: [
                    CartItemWidget(),
                    Divider(
                      height: 30,
                      color: Color.fromARGB(30, 0, 0, 0),
                    ),
                    CartItemWidget(),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(25, 3, 3, 3),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  child: Row(
                    children: [
                      const Text(
                        "Add more items",
                        style: TextStyle(
                            color: Color.fromARGB(128, 0, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(25, 3, 3, 3),
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: const Icon(
                          Icons.add,
                          color: Color.fromARGB(128, 0, 0, 0),
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Offers and Discounts",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  // add border and border radius
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Color.fromARGB(25, 3, 3, 3),
                      width: 1,
                    ),
                  ),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                ),
                child: const Row(
                  children: [
                    Text(
                      "Apply Coupon",
                      style: TextStyle(
                          color: Color.fromARGB(128, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.orange,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 14.0),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Add Address to Proceed',
                    style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
