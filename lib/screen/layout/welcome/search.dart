// search statefull class

import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          // add border rounded border
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: const Color.fromARGB(57, 0, 0, 0),
              width: 1,
            ),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.search_sharp,
                color: Color.fromARGB(215, 255, 153, 0),
                size: 30,
              ),
              SizedBox(width: 10.0),
              Text(
                'Search By Dishes and favorites...',
                style: TextStyle(
                    color: Color.fromARGB(165, 0, 0, 0), fontSize: 17.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
