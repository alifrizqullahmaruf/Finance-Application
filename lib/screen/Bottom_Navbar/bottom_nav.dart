import 'package:app_test/screen/Bottom_Navbar/notification.dart';
import 'package:app_test/screen/Bottom_Navbar/profile.dart';
import 'package:app_test/screen/Bottom_Navbar/wallet.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    WalletScrreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _widgetOptions.elementAt(_selectedIndex),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Align(
            alignment: const Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: BottomNavigationBar(
                onTap: _onItemTapped,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wallet), label: "Wallet"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications_active),
                      label: "Notification"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ],
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.blue.shade300,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                backgroundColor: Colors.blue.shade700,
                currentIndex: _selectedIndex,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
