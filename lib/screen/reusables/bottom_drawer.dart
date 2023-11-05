import 'package:flutter/material.dart';

class AddToCardDrawer extends StatefulWidget {
  const AddToCardDrawer({super.key});

  @override
  State<AddToCardDrawer> createState() => _AddToCardDrawerState();
}

enum ChangeType {
  increment,
  decrement,
}

class _AddToCardDrawerState extends State<AddToCardDrawer> {

  // item counter state
  int _itemCount = 1;
  double price = 5.78;

  // use enum to define the change type
  onChanged(ChangeType changeType) {
    switch (changeType) {
      case ChangeType.increment:
        setState(() {
          _itemCount++;
        });
        break;
      case ChangeType.decrement:
        setState(() {
          // not less than 0
          if (_itemCount > 0) {
            _itemCount--;
          }
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 420,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/6205791/pexels-photo-6205791.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
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
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () => onChanged(ChangeType.decrement),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              "$_itemCount",
                              style:
                                  const TextStyle(fontSize: 20, color: Colors.orange),
                            ),
                            TextButton(
                              onPressed: () => onChanged(ChangeType.increment),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Text(
                            'Add \$${(_itemCount * price).toStringAsFixed(2)}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
