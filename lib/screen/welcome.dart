// welcome page

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/app_bar.dart';

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
              const PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBarWidget(),
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
