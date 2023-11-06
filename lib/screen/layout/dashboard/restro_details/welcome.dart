import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/search.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/menu/recommended.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/reusable/bottom_nav.dart';

class RestroDetails extends StatefulWidget {
  const RestroDetails({super.key});

  @override
  State<RestroDetails> createState() => _RestroDetailsState();
}

class _RestroDetailsState extends State<RestroDetails> {
  int currentIndex = 1; // Initially select the first tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(currentIndex: currentIndex),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.pexels.com/photos/4344544/pexels-photo-4344544.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.white,
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
                        const SizedBox(height: 20),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 18),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                              height: 190,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(12, 0, 0, 0),
                                    spreadRadius: 6,
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                                border: Border.all(
                                  color: const Color.fromARGB(14, 0, 0, 0),
                                  width: 1,
                                ),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "Good Food",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Cheese Burger, Fries, Coke, Salad...",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(142, 0, 0, 0),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Divider(
                                    color: Color.fromARGB(36, 0, 0, 0),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "690 Taylor St, Bethlehem, PA 18015",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(142, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timelapse_sharp,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "2 min . 0.5km . Free delivery",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(142, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 180,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                                child: const Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        '4.8(1k+ Reviews)',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Menu",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 20),
                              SearchWidget(),
                              SizedBox(height: 20),
                              RecommendedMealWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
