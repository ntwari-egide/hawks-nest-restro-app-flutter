// welcome page

import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hawks Nest'),
          actions: [],
          bottom:
              // add the locatoin text on the left and below add the search icon
              PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const Row(
                    // justify center beween children
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black),
                          SizedBox(width: 10.0),
                          Text(
                            'Bethlehem, PA',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 228, 228, 228),
                        child: 
  
                          Icon(Icons.notifications_active, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Hawks Nest',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()),
                  );
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ));
  }
}
