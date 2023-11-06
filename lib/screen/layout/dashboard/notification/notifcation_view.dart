import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(33, 255, 153, 0),
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: const Icon(Icons.notifications_outlined, color: Colors.orange),
        ),
        const SizedBox(width: 10.0),
        const SizedBox(
          width: 300,
          child: Text(
            "Your order is on the way, tap here to track it",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
