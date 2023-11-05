import 'package:flutter/material.dart';

class AddToCardDrawer extends StatefulWidget {
  const AddToCardDrawer({super.key});

  @override
  State<AddToCardDrawer> createState() => _AddToCardDrawerState();
}

class _AddToCardDrawerState extends State<AddToCardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Modal BottomSheet'),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
