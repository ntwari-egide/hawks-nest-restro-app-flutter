import 'package:flutter/material.dart';

class RestroTabs extends StatefulWidget {
  const RestroTabs({Key? key}) : super(key: key);

  @override
  State<RestroTabs> createState() => _RestroTabsState();
}

class _RestroTabsState extends State<RestroTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // define tabs which includes Photos, Menu, Reviews, and About
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxHeight: 250.0),
              child: const Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: Color.fromARGB(139, 0, 0, 0),
                  indicatorColor: Colors.orange,
                  tabs: [
                    Tab(text: 'Photos'),
                    Tab(text: 'Menu'),
                    Tab(text: 'Reviews'),
                    Tab(text: 'About'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(9, (index) {
                        return Container(
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/2814828/pexels-photo-2814828.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black.withOpacity(0.3),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Food Menu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '4 pages',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Reviews'),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('About'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
