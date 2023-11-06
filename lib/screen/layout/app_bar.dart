import 'package:flutter/material.dart';
import 'package:hawks_nest_app/screen/layout/dashboard/notification/welcome.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Row(
            // justify center beween children
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on, color: Colors.black),
                  SizedBox(width: 10.0),
                  Text(
                    'Bethlehem, PA',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 228, 228, 228),
                child:  IconButton(onPressed: () {
                        //send to the notification widget
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const NotificationPageWidget(),
                          ),
                        );
                      }, icon: const Icon(Icons.notifications_active, color: Colors.black),),
              ),
            ],
          ),
        )
      ],
    );
  }
}
