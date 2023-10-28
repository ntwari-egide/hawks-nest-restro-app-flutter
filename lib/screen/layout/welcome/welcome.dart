// class of welcome page with just name

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // set the the component appear below dynamic island
        child: Center(
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
                  height: 700,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Discover Delicious Eats in Bethlehem, PA",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
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
