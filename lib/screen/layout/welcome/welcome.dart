// class of welcome page with just name

import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/auth/login_screen.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //start top
          children: [
            ClipPath(
              clipper:
                  CustomClipperSemicircle(), // Custom clipper for the semicircle
              child: Image.network(
                'https://images.pexels.com/photos/3184188/pexels-photo-3184188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "Discover Delicious Eats in Lehigh Valley",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "Order food from your favorite restaurants and have it delivered to your doorstep! Fast delivery with real-time GPS tracking!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30.0),

            // Let's go button
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginScreen()));
                },
                style: TextButton.styleFrom(
                  // width full
                  minimumSize: const Size(double.infinity, 50.0),
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                child: const Text(
                  "Let's Go!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(232, 255, 255, 255),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class CustomClipperSemicircle extends CustomClipper<Path> {
  // make a semi circle on the bottom of the image only using the clipper

  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
