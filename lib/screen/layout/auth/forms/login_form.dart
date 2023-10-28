import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/welcome.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Text(
            'Login or Sign Up',
            style:
                TextStyle(fontSize: 14.0, color: Color.fromARGB(173, 0, 0, 0)),
          ),
          // rounded phone number input with phone prefix
          const SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Phone Number',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: Color.fromARGB(32, 0, 0, 0),
                  width: 1,
                ),
              ),
            ),
          ),
          // Let's go button
          const SizedBox(height: 30.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardWelcomeScreen(),
                ),
              );
            },
            style: TextButton.styleFrom(
              // width full
              minimumSize: const Size(double.infinity, 50.0),
              backgroundColor: Colors.orange,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            child: const Text(
              "Continue",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(232, 255, 255, 255),
              ),
            ),
          ),

          const SizedBox(height: 30.0),
          const Text(
            'Or',
            style:
                TextStyle(fontSize: 14.0, color: Color.fromARGB(173, 0, 0, 0)),
          ),
          // rounded boardered icons from facebook google and apple
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //circular border
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    color: const Color.fromARGB(57, 0, 0, 0),
                    width: 1,
                  ),
                ),
                child: const Icon(Icons.g_mobiledata),
              ),
              const SizedBox(width: 20.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    color: const Color.fromARGB(57, 0, 0, 0),
                    width: 1,
                  ),
                ),
                child: const Icon(Icons.apple_outlined),
              ),
              const SizedBox(width: 20.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    color: const Color.fromARGB(57, 0, 0, 0),
                    width: 1,
                  ),
                ),
                child: Icon(Icons.facebook),
              ),
            ],
          )
        ],
      ),
    );
  }
}
