import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/reusables/bottom_drawer.dart';

class MealDisplay extends StatefulWidget {
  const MealDisplay({super.key});

  @override
  State<MealDisplay> createState() => _MealDisplayState();
}

class _MealDisplayState extends State<MealDisplay> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.check_circle_outline_sharp,
                        color: Colors.green,
                        size: 25,
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(25, 3, 3, 3),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const Text(
                          'Best food',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Chicken Burger',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 20,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '4.8(1k+ Reviews)',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    '\$5.78',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              // rounded image on the right
              const SizedBox(width: 10.0),
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/6205791/pexels-photo-6205791.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 130.0, left: 40),
                    alignment: Alignment.center,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        child: const Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          showModalBottomSheet(context: context, builder: (context) => const AddToCardDrawer());
                        }),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
