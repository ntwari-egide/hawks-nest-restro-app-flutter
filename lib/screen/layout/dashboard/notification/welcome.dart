import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/notification/notifcation_view.dart';

class NotificationPageWidget extends StatefulWidget {
  const NotificationPageWidget({super.key});

  @override
  State<NotificationPageWidget> createState() => _NotificationPageWidgetState();
}

class _NotificationPageWidgetState extends State<NotificationPageWidget> {
  final int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          margin: const EdgeInsets.only(top: 20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Text(
                "Today",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              NotificationView(),
              Divider(height: 40, color: Color.fromARGB(23, 0, 0, 0),),
              NotificationView(),
              Divider(height: 40, color: Color.fromARGB(23, 0, 0, 0),),
              NotificationView(),
              Divider(height: 40, color: Color.fromARGB(23, 0, 0, 0),),
              NotificationView(),
              Divider(height: 40, color: Color.fromARGB(23, 0, 0, 0),)
            ],
          ),
        ),
      ),
    );
  }
}
