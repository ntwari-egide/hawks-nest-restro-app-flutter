import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/reusables/bottom_drawer.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({super.key});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
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
    return Row(
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chicken Burger',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '\$ 10.00',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Row(
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
                  style: const TextStyle(fontSize: 20, color: Colors.orange),
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
            Text(
              'Add \$${(_itemCount * price).toStringAsFixed(2)}',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
