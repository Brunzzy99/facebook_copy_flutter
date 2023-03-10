import 'package:facebook_copy/home/home_page.dart';
import 'package:facebook_copy/notification/notifications_page.dart';
import 'package:facebook_copy/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookMockApp());
}

class FacebookMockApp extends StatelessWidget {
  const FacebookMockApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {

  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  static int currentPage = 0;

  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
    NotificationsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'facebook copy',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button clicked');
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          NavigationBar(
            backgroundColor: Colors.white,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
            ],
            onDestinationSelected: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            selectedIndex: currentPage,
          ),
          const Divider(
            height: 10.0,
            color: Colors.grey,
          ),
          Expanded(
            child: IndexedStack(
              index: currentPage,
              children: pages,
            ),
          ),
        ],
      ),
    );
  }
}