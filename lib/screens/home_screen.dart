import 'package:flutter/material.dart';
import 'package:wehack/app_styles.dart';
import 'package:wehack/screens/home.dart';
import 'package:wehack/screens/profile_screen.dart';
import 'package:wehack/screens/stat_screen.dart';
import 'package:wehack/screens/wallet_screen.dart';
import 'package:wehack/utilis/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const StatScreen();
      case 2:
        return const WalletScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: buildTabContent(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: kPrimaryColor,
          
          unselectedItemColor: fontLight,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home-1.png"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/chart-vertical.png"),
              label: 'Stat',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/wallet.png"),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user-1.png"),
              label: 'Profile',
            ),
          ],
        ));
  }
}
