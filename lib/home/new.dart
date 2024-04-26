import 'package:appstor/home/cart.dart';
import 'package:appstor/home/homescreen.dart';
import 'package:appstor/home/notificationscreen.dart';
import 'package:appstor/home/profile.dart';
import 'package:flutter/material.dart';

class app extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<app> {
  int curentindex = 0;
  final List<Widget> _screens = [
    HomePage(), // Replace with your HomeScreen widget
    // Replace with your AboutScreen widget
    details(),
    Notificationscreen(),
    Profilescreen() // Replace with your SettingsScreen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      curentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: _screens[curentindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: curentindex,
            onTap: (index) {
              setState(() {
                curentindex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: Color(0xFF20005E),
            unselectedItemColor: Color(0xFF001E5E),
            items: const [
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'cart',
                icon: Icon(Icons.shopping_cart),
              ),
              BottomNavigationBarItem(
                label: 'notifications',
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                label: 'profile',
                icon: Icon(Icons.person),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Replace these with your actual screens
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('About Screen'),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Screen'),
    );
  }
}
