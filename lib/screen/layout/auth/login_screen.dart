import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/auth/forms/login_form.dart';
import 'package:hawks_nest_app/screen/layout/welcome/welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'https://images.pexels.com/photos/1537635/pexels-photo-1537635.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                width: 400,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Your '),
                    TextSpan(
                      text: 'Seamless',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                    TextSpan(text: ' Experience Starts Here'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30.0),
            const LoginForm(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
