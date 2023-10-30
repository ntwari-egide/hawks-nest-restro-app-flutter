import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/home/welcome.dart';

class OTPVerificationWidget extends StatefulWidget {
  const OTPVerificationWidget({super.key});

  @override
  State<OTPVerificationWidget> createState() => _OTPVerificationWidgetState();
}

class _OTPVerificationWidgetState extends State<OTPVerificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP',
          textAlign: TextAlign.center,
        ),
        actions: [],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        //start top
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                // add background of this container to orange
                color: const Color.fromARGB(43, 255, 153, 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 120.0),
                    Text(
                      "OTP Verification",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Code has been sent to \n+1 234 567 890",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color.fromARGB(57, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color.fromARGB(57, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color.fromARGB(57, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color.fromARGB(57, 0, 0, 0),
                          width: 1,
                        ),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              const Text(
                "Didn't receive the code?",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(148, 0, 0, 0)),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 153, 0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextButton(
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: const Text(
                "Verify OTP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(232, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
